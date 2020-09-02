from matplotlib import pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.ticker as mtick
df = pd.read_csv("listings.csv")

area = np.unique(df.neighbourhood)

print(area)
#f, ax = plt.subplots(figsize=(10, 15))
f, ax = plt.subplots(figsize=(20, 20))
sns.barplot(data = df, x = "neighbourhood", y = "price", order = area)
plt.ylabel("Average price per a night", size = 10)
plt.xlabel("Neighborhood", size = 10)
plt.title("Average price of Airbnb rental in San Francisco", size = 18)
plt.xticks(rotation = 70)
fmt = '${x:,.0f}'
tick = mtick.StrMethodFormatter(fmt)
ax.yaxis.set_major_formatter(tick)
#plt.savefig('airbnb_sf.png')
plt.show()
