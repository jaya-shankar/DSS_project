from tensorflow.keras.models import load_model
import folium
import pandas as pd
from flask import Flask,render_template,request
from pymongo import MongoClient
from state_codes import state_code_name_map
import pickle

general_csv_path    = './combined_general_data.csv'
final_combined_path = './final_combined_df.csv'

#load saved model
# loaded_model = load_model('./my_saved_model')
# loaded_model.compile(metrics=['accuracy'])

loaded_model = pickle.load(open('./model.pkl','rb'))

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
        return render_template('index.html')
    
    return render_template("index.html")
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
<<<<<<< HEAD
        # todos.insert_one(data)
=======
>>>>>>> 7ffb4f3b1e4f95aa0e0ad07404dc11293e7d7da6
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
    
    risk_level = loaded_model.predict(combined_df)
    return int(risk_level[0])

def get_state_name(state_code):
    return state_code_name_map[state_code]
    


if __name__=="__main__":
    app.run(debug=True)
