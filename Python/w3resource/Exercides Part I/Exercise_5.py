first_name = ""
last_name = ""
full_name = ""
aux_name = ""

# First Form

first_name = input("Enter first name: ")
last_name = input("Enter last name: ")


print(first_name[::-1] + " " + last_name[::-1])
print(first_name[::-1], last_name[::-1])

# Second Form

aux_name = first_name
first_name = last_name
last_name = aux_name

print(first_name, last_name)

# Third Form

full_name = input("Enter full name: ")
print("Hi!",full_name.split(" ")[1], full_name.split(" ")[0])

# Fourth Form

full_name = input("Enter full name: ")
print(''.join(reversed(full_name)))
