# Write a Python program to create a class and display the namespace of the said class.

class Leo:
    "This is a doc message"
    def __init__(self,lastname, age, hair_color, weight, height):
        self.lastname = lastname
        self.age = age
        self.hair_color = hair_color
        self.weight = weight
        self.height = height

for element in Leo.__dict__:
    print(element)

print("\n")
print(Leo.__module__)
print(Leo.__init__)
print(Leo.__weakrefoffset__)
print(Leo.__doc__)