# First Form

""" list_numbers = []
rounds = 0

while rounds < 5:
    list_numbers.append(input("Enter numbers: "))
    rounds += 1
    
tuple_numbers = tuple(list_numbers)

print("List of numbers: " + str(list_numbers))
print("Tuple of numbers: " + str(tuple_numbers)) """

# Second Form

#text_var = ""
#list_numbers = []
#tuple_numbers = ()

text_var = input("Enter numbers: ")

""" for letter in text_var:
    if letter != ",":
        list_numbers.append(letter) """

list_numbers = text_var.split(",")
tuple_numbers = tuple(list_numbers)

print("List of numbers: " + str(list_numbers))
print("Tuple of numbers: " + str(tuple_numbers))