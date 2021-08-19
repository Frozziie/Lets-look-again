static_number = 17

variable_number = int(input("Enter a number: "))

if variable_number > static_number:
    print("Diference: ", abs(variable_number-static_number)*2)
else:
    print("Diference: ", static_number-variable_number)

