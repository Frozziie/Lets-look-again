# Write a Python program to compute the future value of a specified principal amount, rate of interest, and a number of years.

amt, int, years = 10000, 3.5, 7
correct_int = (int/100)+1
correct_int_2 = 0.01*int
correct_time = years*12


def future_value(amt, int, years):
    ft = round(amt*pow(correct_int,years),2)
    return ft

print(future_value(amt, int, years))