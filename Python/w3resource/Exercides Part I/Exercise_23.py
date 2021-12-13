# First Form

""" string = "Señorita"
repetitions = 2
repeated_string = ""

for i in range(2):
    if len(string) < 2:
        repeated_string = repeated_string + string
    else:
        repeated_string = repeated_string + string[:2]
    
print(repeated_string) """

# Second Form

def string_repetitions(string,number):
    repeated_string = ""

    for i in range(number):
        if len(string) < 2:
            repeated_string = repeated_string + string
        else:
            repeated_string = repeated_string + string[:2]

    return repeated_string

print(string_repetitions("Lady",5))