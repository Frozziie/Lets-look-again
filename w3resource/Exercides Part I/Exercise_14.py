from datetime import date

fdate = date(2014, 7, 2)
sdate = date(2014, 7, 11)
calculated_days = fdate - sdate

print("Days: ", abs(calculated_days.days))
