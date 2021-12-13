# 'builtins' module provides direct access to all 'built-in' identifiers of Python.
# Write a python program which import the abs() function using the builtins module, 
# display the documentation of abs() function and find the absolute value of -155.

import builtins

print(abs.__doc__)
print("The abs of '-155' is:", abs(-155))

help(builtins.abs)