from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
import pandas as pd
from sklearn import metrics 

def build_rf_model(df):
    clf = RandomForestClassifier(n_estimators = 100)
    y = df['risk_level'].copy()
    X = df.copy().drop(columns=["risk_level",'date','state_code','lat','long'])
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.30)
    clf.fit(X_train, y_train)
    y_pred = clf.predict(X_test)
    accuracy = metrics.accuracy_score(y_test, y_pred)
    return clf,accuracy

