from datetime import datetime

# Creating a "Now" object from class "Date" using "Today()" function.
now = datetime.now()

print("Now: ", now)

formatted_now = now.strftime("%Y-%m-%d %H:%M:%S")
print("Formatted:", formatted_now)