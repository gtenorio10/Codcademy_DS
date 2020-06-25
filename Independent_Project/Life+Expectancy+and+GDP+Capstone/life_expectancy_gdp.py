from matplotlib import pyplot as plt
import pandas as pd
import seaborn as sns

df = pd.read_csv("all_data.csv")
print(df.head())
# Rename col #3 from Life expectancy at birth (years) to LEABY
df.rename(columns={"Life expectancy at birth (years)":"LEABY"}, inplace=True) #https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.rename.html
print(df.head())
print(df.Country.unique()) # https://www.geeksforgeeks.org/get-unique-values-from-a-column-in-pandas-dataframe/
print(df.Year.unique())
### Chile, China, Germany, Mexico, USA, Zimbabwe
### 2000 - 2015

sns.boxplot(data = df, x = "Country", y = "GDP")
plt.title("GDP vs Country")
plt.show()

sns.boxplot(data = df, x = "Country", y = "LEABY")
plt.title("GDP vs LEABY")
plt.show()



