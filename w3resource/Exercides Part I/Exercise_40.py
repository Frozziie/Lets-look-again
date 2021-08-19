# Write a Python program to compute the distance between the points (x1, y1) and (x2, y2).

import math

# Try Nº1

def compute_distance(tuple1, tuple2):
    distance = []

    for n in range(0,len(tuple1)):
        distance.append(abs(tuple1[n]-tuple2[n]))
    return distance

# print("Distance:", compute_distance((1, 5),(5, 10)))

# Try Nº2

def compute_distance_2(list1, list2):
    distance = math.sqrt(pow(list2[0]-list1[0],2)+pow(list2[1]-list1[1],2))
    return distance

print("Distance:", round(compute_distance_2((1, 5),(5, 10)),2))