# First Form

""" maximus_list = [4, 1, 15, 4, 10, 8, 4]
counter = 0

for i in maximus_list:
    if i == 4:
       counter += 1

print("The number 4 exist", counter, "times in our list") """

# Second Form

maximus_list = [4, 1, 15, 4, 10, 8, 4, 4]

def four_counter(list):
    four_counter = 0

    for element in list:
        if element == 4:
            four_counter += 1
    return four_counter

print("The number 4 exist", four_counter(maximus_list), "times in our list")