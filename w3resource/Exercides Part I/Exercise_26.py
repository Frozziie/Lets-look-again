# Write a Python program to create a histogram from a given list of integers.

number = [2, 3, 6, 5]

for n in number:
    counter = 0
    printer = ""
    while counter < n:
        printer = printer + "*"
        counter += 1
    print(printer)


