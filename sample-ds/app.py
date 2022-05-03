def find_top_confirmed(n = 15):
    import pandas as pd
    corona_df = pd.read_csv('C:/Users/Keerthi/Downloads/covid19.csv')
    corona_df=corona_df[corona_df['Country_Region']=='US']
    by_state = corona_df.groupby('Province_State').sum()[['Confirmed', 'Deaths', 'Recovered', 'Active']]
    cdf = by_state.nlargest(n, 'Confirmed')[['Confirmed']]
    return cdf
cdf=find_top_confirmed()
pairs=[(Province_State,confirmed) for Province_State,confirmed in zip(cdf.index,cdf['Confirmed'])]
import folium
import pandas as pd
corona_df = pd.read_csv('C:/Users/Keerthi/Downloads/covid19.csv')
corona_df=corona_df[corona_df['Country_Region']=='US']

corona_df=corona_df[['Lat','Long_','Confirmed']]
corona_df=corona_df.dropna()
m=folium.Map(location=[30.4407159,-66.6017203],
            tiles='Stamen toner',
            zoom_start=3)
def circle_maker(x):
    folium.Circle(location=[x[0],x[1]],
                 radius=float(x[2]),
                 color="red",
                 popup='confirmed cases:{}'.format(x[2])).add_to(m)
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
        data['population']=request.form['Population']
        data['hospitals']=request.form['Hospitals']
        data['income']=request.form['Income']
        todos.insert_one(data)
        return render_template("result.html",result = data)
if __name__=="__main__":
    app.run(debug=True)
