# Write a Python program to add two objects if both objects are an integer type.

# First Form
def insert_integers():
    object_list = []

    while len(object_list) < 2:
        num = input("Enter value: ")
        if num.isnumeric():
            object_list.append(int(num))
    return object_list

print(insert_integers())