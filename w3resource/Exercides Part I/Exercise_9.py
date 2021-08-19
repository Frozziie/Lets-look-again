from datetime import datetime

exam_st_date = (11, 12, 2014)

# First Form

""" (day, month, year) = exam_st_date

exam_date = datetime(year, month, day)
print(exam_date.strftime("%d / %m / %Y")) """

# Second Form

print("Date: %i/%i/%i" %exam_st_date)