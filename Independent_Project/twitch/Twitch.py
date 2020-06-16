from matplotlib import pyplot as plt
import numpy as np
import pandas as pd

# Bar Graph: Featured Games

games = ["LoL", "Dota 2", "CS:GO", "DayZ", "HOS", "Isaac", "Shows", "Hearth", "WoT", "Agar.io"]

viewers = [1070, 472, 302, 239, 210, 171, 170, 90, 86, 71]


plt.bar(range(len(games)), viewers, color = "darkmagenta")
plt.title("Viewers of Games on Twitch")
plt.xlabel("Games Title")
plt.ylabel("Number of Viewers")
ax = plt.subplot()
ax.set_xticks(range(0,11))
ax.set_xticklabels(games, rotation = 30)
plt.show()
plt.clf()
# Pie Chart: League of Legends Viewers' Whereabouts

labels = ["US", "DE", "CA", "N/A", "GB", "TR", "BR", "DK", "PL", "BE", "NL", "Others"]

countries = [447, 66, 64, 49, 45, 28, 25, 20, 19, 17, 17, 279]
explode = (0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) # This breaks out the 1st slice aka US

colors = ['lightskyblue', 'gold', 'lightcoral', 'gainsboro', 'royalblue', 'lightpink', 'darkseagreen', 'sienna', 'khaki', 'gold', 'violet', 'yellowgreen']
plt.pie(countries, explode=explode, colors= colors, shadow=True,startangle=345, autopct='%1.0f%%', pctdistance=1.15 )
plt.title("League of Legends Viewers' Whereabouts")
plt.legend(labels, loc="right")
plt.show()
plt.clf()
# Line Graph: Time Series Analysis

hour = range(24)

viewers_hour = [30, 17, 34, 29, 19, 14, 3, 2, 4, 9, 5, 48, 62, 58, 40, 51, 69, 55, 76, 81, 102, 120, 71, 63]
plt.plot(hour, viewers_hour)
plt.title("Time Series")
plt.xlabel("Hour")
plt.ylabel("Number of Viewers")
ax = plt.subplot()
ax.set_xticks(hour)
ax.set_xticklabels(hour)

y_upper = [i + (i*0.15) for i in viewers_hour]
y_lower = [i - (i*0.15) for i in viewers_hour]

plt.fill_between(hour, y_lower, y_upper, alpha=0.2)
plt.show()
