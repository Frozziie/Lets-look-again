# First Form

""" var = input("Enter a value: ")

var1 = int(var+var)
var2 = int(var+var+var)
print(int(var)+var1+var2) """

# Second Form

number = int(input("Enter a value : "))
n1 = int("%s" % number)
n2 = int("%s%s" % (number,number))
n3 = int("%s%s%s" % (number,number,number))
print (n1+n2+n3)