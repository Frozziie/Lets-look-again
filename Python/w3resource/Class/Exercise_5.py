# Define a Python function student(). Using function attributes display the names of all arguments.

# ¿First Form?

""" def student():
    pass

setattr(student, 'full name', 'Leonardo Bravo')
setattr(student, 'note', 8)

print(getattr(student,'note'))
print(student.__dict__) """

# Second Form

def student(student_name, student_age):
    return f'Student Name:{student_name}\nStudent Age:{student_age}'

print(student('Leo', '26'))