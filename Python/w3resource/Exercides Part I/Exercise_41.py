# Write a Python program to check whether a file exists.

import os.path

# First Form
print(os.path.isfile('C:/Users/LeoGa/Downloads/Metrogas.pdf'))

# Second Form
print(os.path.exists('C:/Users/LeoGa/Downloads/Metrogas.pdf'))

# Third Form

try:
    f = open("C:/Users/LeoGa/Downloads/Metrogass.pdf")
    f.close()
    print("File found")
except FileNotFoundError:
    print("File not found")

# Bonus
print(os.path.isdir('C:/Users/LeoGa/Downloads'))
