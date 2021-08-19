# Write a Python program to sum of two given integers. However, if the sum is between 15 to 20 it will return 20.

# First Form

def sum_values():
    number_list = []

    for n in range(0,2):
        number_list.append(int(input("Enter value: ")))

    if sum(number_list) >= 15 <= 20:
        return 20
    else:
        return sum(number_list)


# Second Form

def sum_values_2():
    number_list = []

    for n in range(0,2):
        number_list.append(int(input("Enter value: ")))

    if sum(number_list) in range(15,20):
        return 20
    else:
        return sum(number_list)

print(sum_values_2())