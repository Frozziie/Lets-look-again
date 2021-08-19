# Write a Python program to compute the greatest common divisor (GCD) of two positive integers.

import math

n1 = int(input("Enter a value: "))
n2 = int(input("Enter a value: "))
gcd = math.gcd(n1,n2)

print("GCD:", gcd)