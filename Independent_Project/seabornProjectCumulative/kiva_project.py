from matplotlib import pyplot as plt
import pandas as pd
import seaborn as sns
import matplotlib.ticker as mtick

df = pd.read_csv("kiva_data.csv")

print(df.head(25))

f, ax = plt.subplots(figsize=(15, 10))
sns.barplot(data = df, x = df.country, y = df.loan_amount, hue = df.gender)

#This block of code adds the $ sign in front of the numbers on the  y axis
fmt = '${x:,.0f}'
tick = mtick.StrMethodFormatter(fmt)
ax.yaxis.set_major_formatter(tick)
plt.show()

#Styling with color
sns.set_palette(sns.color_palette("Set3"))
f,ax = plt.subplots(figsize=(25, 15))

sns.barplot(data = df, x = df.country, y = df.loan_amount, hue = df.gender)
ax.set_title("Total Loan Amount Awarded by Gender")
fmt = '${x:,.0f}'
tick = mtick.StrMethodFormatter(fmt)
ax.yaxis.set_major_formatter(tick)
plt.show()

#Box plot
plt.figure(figsize=(16, 10))
sns.set_palette(sns.color_palette("Accent"))
sns.boxplot(data = df, x = df.country, y = df.loan_amount)
plt.title("The distribution of loan amounts by country")
plt.show()

#Box plot by activity
plt.figure(figsize=(16, 10))
sns.set_palette(sns.color_palette("Dark2"))
sns.boxplot(data = df, x = df.activity, y = df.loan_amount)
plt.title("The distribution of loan amounts by Activity")
plt.show()

#Violin Plot
plt.figure(figsize=(16, 10))
sns.set_palette(sns.color_palette("Dark2"))
sns.violinplot(data = df, x = df.activity, y = df.loan_amount)
plt.title("The distribution of loan amounts by Activity")
plt.show()

plt.figure(figsize=(16, 10))
sns.set_palette(sns.color_palette("Accent"))
sns.violinplot(data = df, x = df.country, y = df.loan_amount)
plt.title("The distribution of loan amounts by country")
plt.show()

#Violin plot split
plt.figure(figsize=(18, 12))
sns.set_palette(sns.color_palette("Spectral"))
sns.violinplot(data = df, x = df.country, y = df.loan_amount, hue = df.gender)
plt.title("The distribution of loan amounts by country")
plt.show()