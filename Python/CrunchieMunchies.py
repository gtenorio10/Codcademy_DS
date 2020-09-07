import numpy as np

calorie_stats = np.genfromtxt("cereal.csv", delimiter = ',')
print(calorie_stats)

average_calories = np.mean(calorie_stats)
print("Calories Average:", average_calories)

calorie_stats_sorted = np.sort(calorie_stats)
print(calorie_stats_sorted)

median_calories = np.median(calorie_stats)
print("Calories Median:", median_calories)

#The lowest percentile greater than 60
nth_percentile = np.percentile(calorie_stats,4)
print(np.percentile(calorie_stats, 4))

more_calories = np.mean(calorie_stats > 60)
print("More Calories percentile:", more_calories)

calories_std = np.std(calorie_stats)
print("Calories std: ",calories_std)