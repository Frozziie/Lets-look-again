# Write a Python program to concatenate all elements in a list into a string and return it.

# First Form

""" element_list = ['Python', 'is', 'a', 'fun', 'programming', 'language']
number_list = ['1', '2', '3', '4', '5']

print(' '.join(element_list))
print(''.join(number_list)) """

# Second Form

function_list = [1, 2, 3, 4, 5]

def concatenate_elements(list):
    number_string = ""
    for n in list:
        number_string += str(n)

    return number_string

print(concatenate_elements(function_list))