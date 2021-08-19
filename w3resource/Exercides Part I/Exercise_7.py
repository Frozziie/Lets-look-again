# First Form

""" string = input("Enter a file name: ")
print("Extension: " + string[string.index(".")+1:]) """

# Second Form

string = input("Enter a file name: ")
extension = string.rsplit(".")
print("File extension is: " + extension[-1])