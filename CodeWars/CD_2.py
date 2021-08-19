# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

def create_phone_number(number_list):
    template = "(xxx) xxx-xxxx"
    phone_number = ""
    string_list = [str(number) for number in number_list]
    string = "".join(string_list)
    counter = 0

    for i in range(0,len(template)):
        if template[i] == "x":
            phone_number = phone_number + string[counter]
            counter += 1
        else:
            phone_number = phone_number + template[i]

    return phone_number

def create_phone_number_2(number_list):
    return "({}{}{}) {}{}{}-{}{}{}{}".format(*number_list)

print(create_phone_number_2([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
#print(create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
#print(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
#print(create_phone_number([0, 2, 3, 0, 5, 6, 0, 8, 9, 0]))
#print(create_phone_number([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]))