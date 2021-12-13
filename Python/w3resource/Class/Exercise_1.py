# Write a Python program to import built-in array module and display the namespace of the said module.

import array

for element in array.__dict__:
    print(element)