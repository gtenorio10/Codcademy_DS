#This gets the y value
def get_y(m, b, x):
  y = m * x + b
  return y

def calculate_error(m, b, point):
    x_point = point[0]
    y_point = point[1]
    y_value = get_y(m, b, x_point)
    return abs(y_value - y_point)

#Testing
print(calculate_error(1, 0, (3, 3))) #Should expect 0, this is a line that looks like y = x, so (3, 3) should lie on it. thus, error should be 0:
print(calculate_error(1, 0, (3, 4))) #Should expect 1 away, the point (3, 4) should be 1 unit away from the line y = x:
print(calculate_error(1, -1, (3, 3))) #Should expect 1 away, the point (3, 3) should be 1 unit away from the line y = x - 1:
print(calculate_error(-1, 1, (3, 3))) #Should expect 5 away, the point (3, 3) should be 5 units away from the line y = -x + 1:

print("#####")
#Calculating the total error in dataset
def calculate_all_error(m, b, data_points):
    calculate_error_total = 0
    for i in range(len(data_points)):
        calculate_error_total += calculate_error(m,b,data_points[i])
    return calculate_error_total
#Testing
datapoints = [(1, 1), (3, 3), (5, 5), (-1, -1)]
print(calculate_all_error(1, 0, datapoints)) #every point in this dataset lies upon y=x, so the total error should be zero:
print(calculate_all_error(1, 1, datapoints)) #every point in this dataset is 1 unit away from y = x + 1, so the total error should be 4:
print(calculate_all_error(1, -1, datapoints)) #every point in this dataset is 1 unit away from y = x - 1, so the total error should be 4:
print(calculate_all_error(-1, 1, datapoints)) #the points in this dataset are 1, 5, 9, and 3 units away from y = -x + 1, respectively, so total error should be 18
print("#####")

possible_ms = [m * 0.1 for m in range(-100, 101)]
print(possible_ms)

possible_bs = [b * 0.1 for b in range(-200, 201)]
print(possible_bs)

datapoints = [(1, 2), (2, 0), (3, 4), (4, 4), (5, 3)]
smallest_error = float("inf")
best_m = 0
best_b = 0

for m in range(len(possible_ms)):
    for b in range(len(possible_bs)):
        if smallest_error > calculate_all_error(possible_ms[m], possible_bs[b], datapoints):
            smallest_error = calculate_all_error(possible_ms[m], possible_bs[b], datapoints)
            best_m = possible_ms[m]
            best_b = possible_bs[b]
        else:
            continue


print("Smallest Error:", smallest_error)
print("Best m:", best_m)
print("Best b:", best_b)

print("#####")
print(get_y(0.3,1.7,6))