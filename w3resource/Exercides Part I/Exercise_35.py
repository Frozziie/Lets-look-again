# Write a Python program that will return true if the two given integer values are equal or their sum or difference is 5.

# True if
# Equals
# Sum = 5
# Diference = 5 (substraction)

def receive_values():

    num = int(input("Enter value: "))
    num2 = int(input("Enter value: "))

    if num == num2 or num + num2 == 5 or abs(num - num2) == 5:
        return True
    else:
        return False

print(receive_values())