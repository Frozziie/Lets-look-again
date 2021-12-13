# Write a Python program to print out a set containing all the colors from color_list_1 which are not present in color_list_2.

color_list_1 = set(["White", "Black", "Red"])
color_list_2 = set(["Red", "Green"])
color_list_3 = []

# First Form

""" for color in color_list_1:
    if color not in color_list_2:
        color_list_3.append(color)

print(color_list_3) """

# Second Form

print(color_list_1.difference(color_list_2))
print(color_list_2.difference(color_list_1))