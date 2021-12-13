# Write a Python program to display your details like name, age, address in three different lines.

# First Form

""" name = input("Enter name: ")
age = input("Enter age: ")
adress = input("Enter adress: ")

print(name)
print(age)
print(adress) """

# Second Form

""" personal_info = []

personal_info.append(input("Enter name: "))
personal_info.append(input("Enter age: "))
personal_info.append(input("Enter adress: "))

for n in range(len(personal_info)):
    print(personal_info[n]) """

# Third Form

name, age, adress = "Leo", 26, "Av. Juan Bautista Justo 2360"

print("Name: {}\nAge: {}\nAdress: {}\n".format(name,age,adress))