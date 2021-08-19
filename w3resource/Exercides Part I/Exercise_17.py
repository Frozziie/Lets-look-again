# Not to good form (i didn't understood what i was supposed to do)

""" opt = 1

while opt != 0:
    
    number = int(input("Enter a number between 100 and 1000/2000: "))

    if number >= 100 and number <= 1000:
        print("Number is between 100 and 1000")
    elif number > 1000 and number <= 2000:
        print("Number is higher than 1000 and lower or equal to 2000")
    else:
        print("Number is lesser than 100 or bigger than 2000")

    opt = int(input("Do you wish to continuo?\n Yes(1) No(0) \n")) """

# Good Form

def testing_number(number):
    return ((abs(1000 - number)<=100) or (abs(2000 - number)<=100))

number = int(float(input("Enter a number: ")))

print(testing_number(number))
