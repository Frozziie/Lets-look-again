import calendar

year = int(input("Enter an year: "))
month = int(input("Enter a month: "))

# Month calendar
print(calendar.month(year, month))

# Year calendar
print(calendar.calendar(year))