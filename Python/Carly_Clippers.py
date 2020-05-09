hairstyles = ["bouffant", "pixie", "dreadlocks", "crew", "bowl", "bob", "mohawk", "flattop"]

prices = [30, 25, 40, 20, 20, 35, 50, 35]

last_week = [2, 3, 5, 8, 4, 4, 6, 2]

total_price = 0
for cost in prices:
  total_price+=cost
  print(total_price)

average_price = total_price/len(prices)
print("Average Haircut Price:", "$"+str(round(average_price, 2)))

new_prices = [cost - 5 for cost in prices]
print(new_prices)

total_revenue = 0
for i in range(len(hairstyles)):
  total_revenue += prices[i] * last_week[i]

print("Total Revenue:" "$"+ str(total_revenue))
average_daily_revenue = total_revenue/7
print("Average daily revenue: ", "$" + str(round(average_daily_revenue, 2)))

cuts_under_30 = [hairstyles[i] for i in range(len(hairstyles)) if new_prices[i] < 30]
print("Hairstyles under $30:",cuts_under_30)