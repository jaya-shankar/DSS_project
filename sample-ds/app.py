from locale import normalize
from tensorflow.keras.models import load_model
import folium
import pandas as pd
from flask import Flask,render_template,request
from pymongo import MongoClient
from state_codes import state_code_name_map
from build_model import build_rf_model
import pickle


general_csv_path            = './datasets/combined_general_data.csv'
final_combined_path         = './datasets/final_combined_df_train.csv'
normalized_combined_path    = './datasets/normalized_combined.csv'

#load saved model
# loaded_model = load_model('./my_saved_model')
# loaded_model.compile(metrics=['accuracy'])

model = pickle.load(open('./model.pkl','rb'))

def get_state_name(state_code):
    return state_code_name_map[state_code]

def find_confirmed_cases(date):
    df = pd.read_csv(final_combined_path)
    df = df[df.date == date]
    df = df.sort_values(by=['cases'], ascending=False)
    return df
def find_top_confirmed(df,n = 15):
    cdf = df.head(n)
    return cdf

def generate_state_code_cases_pairs(df):
    pairs = []
    df = df.head(15)
    for index, row in df.iterrows():
        pairs.append((get_state_name(row['state_code']),row['cases']))
    return pairs

def circle_maker(x,m):
    folium.Circle(location=[x.lat,x.long],
                 radius=float(x.cases)*1.5,
                 color="red",
                 fill=True,
                 weight=1,
                 popup=get_state_name(x.state_code)+'\nconfirmed cases:{}'.format(x.cases)).add_to(m)
    
def fetch_factors():
    df = pd.read_csv(final_combined_path)
    df.drop(columns=['state_code','date','lat','long','Unnamed: 0'],inplace=True)
    factors = df.columns.tolist()
    return factors

def add_risk_value(nor_df,dp_w):
    factors = fetch_factors()
    nor_df['risk_level'] = 0
    for f in factors:
        nor_df['risk_level'] += nor_df[f]*dp_w[f]
    # nor_df['risk_level'] = (nor_df['cases']*dp_w['cases']+
    #                 nor_df['deaths']*dp_w['deaths']+
    #                 nor_df['CurrentHospitalizations']*dp_w['CurrentHospitalizations']+
    #                 nor_df['CurrentlyInICU']*dp_w['CurrentlyInICU']+
    #                 nor_df['CurrentlyOnVentilator']*dp_w['CurrentlyOnVentilator']+
    #                 (1-nor_df['people_fully_vaccinated'])*dp_w['people_fully_vaccinated']+
    #                 (1-nor_df['no_of_hospitals'])*dp_w['no_of_hospitals']+
    #                 nor_df['population']*dp_w['population']+
    #                 nor_df['persons_per_household']*dp_w['persons_per_household']+
    #                 nor_df['above_65']*dp_w['above_65']+
    #                 nor_df['avg_income']*dp_w['avg_income']+
    #                 nor_df['percent_in_poverty']*dp_w['percent_in_poverty']+
    #                 nor_df['mean_travel_time']*dp_w['mean_travel_time']+
    #                 (1-nor_df['miles_of_road'])*dp_w['miles_of_road']+
    #                 nor_df['avg_wind_speed']*dp_w['avg_wind_speed']+
    #                 nor_df['avg_temp']*dp_w['avg_temp']+
    #                 nor_df['percent_democrat']*dp_w['percent_democrat']+
    #                 nor_df['percent_white']*dp_w['percent_white'])
    return nor_df


def divide_risk_values(nor_df):
    
    nor_df.quantile(0.9)
    print(nor_df)
    risk_range = {1: nor_df.quantile(0.15),
              2: nor_df.quantile(0.35),
              3: nor_df.quantile(0.65),
              4: nor_df.quantile(0.85),
              5: nor_df.quantile(1)
            }
    print(risk_range)
    return risk_range


def decide_category(v,risk_range):
    
    if v<=risk_range[1]:
            return 1
    elif v<=risk_range[2]:
        return 2
    elif v<=risk_range[3]:
        return 3
    elif v<=risk_range[4]:
        return 4
    else:
        return 5


client=MongoClient('localhost',27017)
db=client.covid_db
todos=db.todos

app=Flask(__name__)
@app.route("/", methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        if request.form.get('action1') == 'Estimate risk':
            return render_template("estimate.html")
        else:
            m=folium.Map(location=[39.8283,-98.5795],
                tiles='Stamen toner',
                zoom_start=4,
                min_zoom = 4,
                max_zoom = 6)
            try:
                date               = request.form.get('date')
            except:
                date               = '2021-01-12'
            # get data frame for that date
            cases_df            = find_confirmed_cases(date)
            top_15_states_df    = find_top_confirmed(cases_df,n=15)
            pairs               = generate_state_code_cases_pairs(cases_df)
            cases_df.apply(lambda x:circle_maker(x,m=m),axis=1)
            html_map=m._repr_html_()
            return render_template("statistics.html",table=top_15_states_df, cmap=html_map,pairs=pairs,date=date)
            pass # unknown
    elif request.method == 'GET':
        return render_template('index.html',data = {})
    
    return render_template("index.html",data = {})

@app.route('/add_weight', methods=['GET', 'POST'])
def add_weight():
    if request.method == 'POST':
        data = request.form
        print(data)
        dp_w = data.to_dict()
        dp_w = {k:int(v)/100 for k,v in dp_w.items()}
        print(dp_w)
       # normalize the values
        df = pd.read_csv(final_combined_path)
        no_normalization_columns = {'date','state_code','lat','long'}
        nor_df = df.copy()
        columns = list(df.columns)
        for column in columns:
            if column in no_normalization_columns:
                continue
            nor_df[column] = (nor_df[column] - nor_df[column].min())/(nor_df[column].max() - nor_df[column].min())*100
         # add new columns called risk_value to copy of df
        nor_df = add_risk_value(nor_df,dp_w)
        # nor_df.to_csv("tmp",index=False)
        risk_range = divide_risk_values(nor_df['risk_level'])
        # add new columns called risk_level to acutal dataframe
        df['risk_level'] =nor_df['risk_level'].transform(lambda x: decide_category(x,risk_range))
        # df.to_csv("tmp2",index=False)
        # building model
        df.dropna(inplace=True)
        model,accuracy = build_rf_model(df)
        data = {}
        data['accuracy'] = round(accuracy*100,2)
        print(accuracy)
        return render_template("index.html",data=data)
    else:
        
        factors = fetch_factors()
        print(factors)
        return render_template("add_weight.html",factors=factors)


@app.route('/add_factor', methods=['GET', 'POST'])
def add_dataset():
    if request.method == 'POST':
        f = request.files['file']
        new_df = pd.read_csv(f)
        # get filename without extension
        filename = f.filename.split('.')[0]
        #convert new_df to a dict
        # new_df.set_index('state_code',inplace=True)
        try:
            df = pd.read_csv(final_combined_path)
            df = pd.merge(df,new_df,on='state_code')
            df.to_csv(final_combined_path,index=False)
        except:
            return render_template("error.html",result ={"message": "Error in merging the data"})
        return render_template("index.html")
    else:
        return render_template("add_dataset.html")

@app.route('/delete_factor', methods=['GET', 'POST'])
def delete_factor():
    if request.method =='POST':
        #get checked values
        factors = fetch_factors()
        checked = request.form.getlist('factor')
        df = pd.read_csv(final_combined_path)
        df.drop(columns=checked,inplace=True)
        df.to_csv(final_combined_path,index=False)
        return render_template("delete_factor.html",factors=factors)
    else:
        factors = fetch_factors()
        return render_template("delete_factor.html",factors=factors)
    
@app.route('/result',methods = ['POST', 'GET'])
def result():
    data={}
    if request.method == 'POST':
        
        data['state_code']=request.form['stateCode']
        data['cases']=request.form['cases']
        data['deaths']=request.form['deaths']
        data['CurrentlyInICU']=request.form['icu_patients']
        data['CurrentlyOnVentilator']=request.form['ventilator_patients']
        data['CurrentHospitalizations']=request.form['patients']
        data['people_fully_vaccinated']=request.form['vaccinated']
        data['risk_level'] = predict_risk(data)
        if data['risk_level'] == -1:
            return render_template("error.html",result = {"message":"State not found"})
        todos.insert_one(data)
        return render_template("result.html",result = data)
    
def predict_risk(data):
    general_df = pd.read_csv(general_csv_path)
    try:
        general_df = general_df[general_df['state_code']==data['state_code']]
        general_df.drop(columns=['state_code'],inplace=True)
        general_df.index = range(len(general_df))
    except:
        return -1
    specific_df= pd.DataFrame(data,index=[0])
    combined_df = pd.concat([general_df, specific_df], axis=1)
    combined_df = combined_df[["cases","deaths","no_of_hospitals","miles_of_road","percent_democrat","population","avg_income","mean_travel_time","above_65","percent_white","persons_per_household","percent_in_poverty","avg_wind_speed","avg_temp","people_fully_vaccinated","CurrentHospitalizations","CurrentlyInICU","CurrentlyOnVentilator"]]
    # 
    
    risk_level = model.predict(combined_df)
    return int(risk_level[0])


    


if __name__=="__main__":
    app.run(debug=True)
