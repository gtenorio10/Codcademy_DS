import pandas as pd
import numpy as np
from weather_data import london_data

print(london_data.head())
print(len(london_data))

temp = london_data["TemperatureC"]
average_temp = np.mean(temp)
temperature_var = np.var(temp)
print("temperature var:", temperature_var)
temperature_standard_deviation= np.std(temp)
print("temperature std:", temperature_standard_deviation)

june = london_data.loc[london_data["month"] == 6]["TemperatureC"]
july = london_data.loc[london_data["month"] == 7]["TemperatureC"]

average_june = np.mean(june)
print("June temp mean:", average_june)
average_july = np.mean(july)
print("July temp mean:", average_july )

june_std = np.std(june)
print("June std:", june_std)
july_std = np.std(july)
print("July std:", july_std)


for i in range(1, 13):
  month = london_data.loc[london_data["month"] == i]["TemperatureC"]
  print("The mean temperature in month "+str(i) +" is "+ str(np.mean(month)))
  print("The standard deviation of temperature in month "+str(i) +" is "+ str(np.std(month)) +"\n")
