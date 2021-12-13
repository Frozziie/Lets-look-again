# Write a Python program to determine if a Python shell is executing in 32bit or 64bit mode on OS.

# First Form

import sys

is_32bits = sys.maxsize > 2**16
is_64bits = sys.maxsize > 2**32

print(is_64bits)
print(is_32bits)

# Second Form

import struct

print(struct.calcsize("P") * 8)

# Third Form

import platform

print(platform.architecture()[0])