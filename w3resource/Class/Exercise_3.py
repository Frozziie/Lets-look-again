# Write a Python program to create an instance of a specified class and display the namespace of the said instance.
import datetime

class Alquiler:
    def __init__(self,tenant, owner, guarantor, amount):
        self.tenant = tenant
        self.owner = owner
        self.guarantor = guarantor
        self.amount = amount

#expiration_date = datetime.date(2021, 8, 13)
#print(expiration_date)


tenant = Alquiler("Leo", "Marcelino Herrero", "Marcelo Bravo", 27800)

for attribute in tenant.__dict__:
    print(attribute)