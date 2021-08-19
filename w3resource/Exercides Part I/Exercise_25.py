# Write a Python program to check whether a specified value is contained in a group of values.

number_list = [1, 5, 8, 3]
number = 0

number = int(input("Enter a value: "))

def searching_value(number_list, number):
    return number in number_list

print(searching_value(number_list,number))