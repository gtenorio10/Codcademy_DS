def ground_shipping_cost(weight):
  if  (2 >= weight):
    return (weight * 1.50 + 20)
  elif (2 < weight) and (6 >= weight):
    return (weight * 3.00 + 20)
  elif (6 < weight) and (10 >= weight):
    return (weight * 4.00 + 20)
  else:
    return (weight * 4.75 + 20)

print("Ground Shipping Cost:", "$"+ str(ground_shipping_cost(8.4)))

premium_ground_shipping = 125.00

def drone_shipping_cost(weight):
  if  (2 >= weight):
    return (weight * 4.50)
  elif (2 < weight) and (6 >= weight):
    return (weight * 9.00)
  elif (6 < weight) and (10 >= weight):
    return (weight * 12.00)
  else:
    return (weight * 14.25)

print("Drone Shipping Cost:", "$" + str(drone_shipping_cost(1.5)))    

def cheapest_shipping(weight):
  if (drone_shipping_cost(weight) > ground_shipping_cost(weight)) and (premium_ground_shipping > ground_shipping_cost(weight)):
    return print("Cheapest option is: Ground shipping at", "$" + str(ground_shipping_cost(weight)))
  elif (premium_ground_shipping > drone_shipping_cost(weight)):   
    return print("Cheapest option is: Drone shipping at", "$" + str(drone_shipping_cost(weight)))
  else:
    return print("Cheapest option is: Premium shipping at", "$" + str(premium_ground_shipping))

cheapest_shipping(4.8)
cheapest_shipping(41.5)
