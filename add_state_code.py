
import pandas as pd

state_code  =  {
    "State":"Value",
    "Alabama":"AL",
    "Alaska":"AK",
    "Arizona":"AZ",
    "Arkansas":"AR",
    "California":"CA",
    "Colorado":"CO",
    "Connecticut":"CT",
    "Delaware":"DE",
    "District of Columbia":"DC",
    "Florida":"FL",
    "Georgia":"GA",
    "Hawaii":"HI",
    "Idaho":"ID",
    "Illinois":"IL",
    "Indiana":"IN",
    "Iowa":"IA",
    "Kansas":"KS",
    "Kentucky":"KY",
    "Louisiana":"LA",
    "Maine":"ME",
    "Maryland":"MD",
    "Massachusetts":"MA",
    "Michigan":"MI",
    "Minnesota":"MN",
    "Mississippi":"MS",
    "Missouri":"MO",
    "Montana":"MT",
    "Nebraska":"NE",
    "Nevada":"NV",
    "New Hampshire":"NH",
    "New Jersey":"NJ",
    "New Mexico":"NM",
    "New York":"NY",
    "North Carolina":"NC",
    "North Dakota":"ND",
    "Ohio":"OH",
    "Oklahoma":"OK",
    "Oregon":"OR",
    "Pennsylvania":"PA",
    "Rhode Island":"RI",
    "South Carolina":"SC",
    "South Dakota":"SD",
    "Tennessee":"TN",
    "Texas":"TX",
    "Utah":"UT",
    "Vermont":"VT",
    "Virginia":"VA",
    "Washington":"WA",
    "West Virginia":"WV",
    "Wisconsin":"WI",
    "Wyoming":"WY",
    "Puerto Rico":"PR",
    "Guam":"GU"
}

paths = [
#          "raw_datasets/us-counties.csv",
#          "raw_datasets/avg_income.csv",
#          "raw_datasets/percent_white.csv",
#          "raw_datasets/persons_per_household.csv",
#          "raw_datasets/percent_above_65_age.csv",
#          "raw_datasets/mean_travel_time.csv",
#          "raw_datasets/percent_in_poverty.csv",
         "raw_datasets/avg_temp.csv",
         "raw_datasets/avg_wind_speed.csv",
         ]

for path in paths:
    df  = pd.read_csv(path)
    cloumns = df.columns
    print(cloumns)
    if "state_code" in cloumns:
        continue
    # add state code column to dataframe
    df = df.assign(state_code=df["State"].map(state_code))
    
    df.to_csv(path, index=False)
        