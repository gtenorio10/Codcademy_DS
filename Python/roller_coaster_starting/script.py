import pandas as pd
import matplotlib.pyplot as plt

# load rankings data here:
Wood_df = pd.read_csv("Golden_Ticket_Award_Winners_Wood.csv")
Steel_df = pd.read_csv("Golden_Ticket_Award_Winners_Steel.csv")


# write function to plot rankings over time for 1 roller coaster here:
def Coaster_Ranking_Plot(name_of_coaster, df, park_name):
  coaster_ranking = df[(df.Name == name_of_coaster) & (df.Park == park_name)]
  ax = plt.subplot()
  plt.plot(coaster_ranking['Year of Rank'], coaster_ranking['Rank'])
  plt.title("Rolling Coaster Ranking of " + name_of_coaster + " Over the Years")
  plt.xlabel("Year")
  plt.ylabel("Ranking")
  ax.invert_yaxis()
  plt.show()

Coaster_Ranking_Plot("El Toro", Wood_df, "Six Flags Great Adventure")

plt.clf()

# write function to plot rankings over time for 2 roller coasters here:
def Coaster_Ranking_Plot2(coaster1, coaster2, df1, df2, park_name1, park_name2):
  coaster_ranking1 = df1[(df1.Name == coaster1) & (df1.Park == park_name1)]
  coaster_ranking2 = df2[(df2.Name == coaster2) & (df2.Park == park_name2)]
  ax = plt.subplot()
  plt.plot(coaster_ranking1['Year of Rank'], coaster_ranking1['Rank'], color = "green")
  plt.plot(coaster_ranking2['Year of Rank'], coaster_ranking2['Rank'], color = "brown")
  plt.title(coaster1 + " vs " + coaster2 + " Ranking ")
  plt.xlabel("Year")
  plt.ylabel("Ranking")
  plt.legend([coaster1, coaster2])
  ax.invert_yaxis()
  plt.show()

Coaster_Ranking_Plot2("El Toro","Boulder Dash", Wood_df, Wood_df, "Six Flags Great Adventure", "Lake Compounce")







plt.clf()

# write function to plot top n rankings over time here:










plt.clf()

# load roller coaster data here:



# write function to plot histogram of column values here:










plt.clf()

# write function to plot inversions by coaster at a park here:










plt.clf()

# write function to plot pie chart of operating status here:










plt.clf()

# write function to create scatter plot of any two numeric columns here:










plt.clf()
