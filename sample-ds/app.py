from tensorflow.keras.models import load_model

covid19_csv_path = './covid19.csv'
general_csv_path = './combined_general_data.csv'
#load saved model
loaded_model = load_model('./my_saved_model')
loaded_model.compile(metrics=['accuracy'])

def find_top_confirmed(n = 15):
    import pandas as pd
    corona_df = pd.read_csv(covid19_csv_path)
    corona_df=corona_df[corona_df['Country_Region']=='US']
    by_state = corona_df.groupby('Province_State').sum()[['Confirmed', 'Deaths', 'Recovered', 'Active']]
    cdf = by_state.nlargest(n, 'Confirmed')[['Confirmed']]
    return cdf
cdf=find_top_confirmed()
pairs=[(Province_State,confirmed) for Province_State,confirmed in zip(cdf.index,cdf['Confirmed'])]
import folium
import pandas as pd
corona_df = pd.read_csv(covid19_csv_path)
corona_df=corona_df[corona_df['Country_Region']=='US']

corona_df=corona_df[['Province_State','Lat','Long_','Confirmed']]
corona_df=corona_df.dropna()
m=folium.Map(location=[30.4407159,-66.6017203],
            tiles='Stamen toner',
            zoom_start=3)
def circle_maker(x):
    folium.Circle(location=[x[1],x[2]],
                 radius=float(x[3]),
                 color="red",
                 popup=x[0]+'\nconfirmed cases:{}'.format(x[3])).add_to(m)
corona_df.apply(lambda x:circle_maker(x),axis=1)
html_map=m._repr_html_()
from flask import Flask,render_template,request
from pymongo import MongoClient

client=MongoClient('localhost',27017)
db=client.covid_db
todos=db.todos
app=Flask(__name__)
@app.route("/", methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        if request.form.get('action1') == 'Estimate risk':
            return render_template("estimate.html")
        elif  request.form.get('action2') == 'Show statistics':
            return render_template("statistics.html",table=cdf, cmap=html_map,pairs=pairs)
        else:
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
        data['CurrentlyInICU']=request.form['icu_patients']
        data['CurrentlyOnVentilator']=request.form['ventilator_patients']
        data['CurrentHospitalizations']=request.form['patients']
        data['people_fully_vaccinated']=request.form['vaccinated']
        todos.insert_one(data)
        data['risk_level'] = predict_risk(data)
        if data['risk_level'] == -1:
            return render_template("error.html",result = {"message":"State not found"})
        return render_template("result.html",result = data)
    
def predict_risk(data):
    general_df = pd.read_csv(general_csv_path)
    try:
        general_df = general_df[general_df['state_code']==data['state_code']]
    except:
        return -1
    specific_df= pd.DataFrame(data,index=[0])
    combined_df = pd.concat([general_df,specific_df],axis=1)
    risk_level = loaded_model.predict(combined_df)
    return risk_level

if __name__=="__main__":
    app.run(debug=True)
