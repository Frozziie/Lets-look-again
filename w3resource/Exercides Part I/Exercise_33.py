# Write a Python program to sum of three given integers. However, if two values are equal sum will be zero.

# First Form

""" check_num_list = []
res = 0

for n in range(0,3):
    num = int(input("Enter value:"))
    check_num_list.append(num)

if len(check_num_list) != len(set(check_num_list)):
    print("More than one similar value therefore sum equals:", res)
else:
    res = sum(check_num_list)
    print("No repeated values therefore sum equals:", res) """

# Second Form

def sum_values():
    check_num_list = []
    res = 0

    for n in range(0,3):
        num = int(input("Enter value:"))
        check_num_list.append(num)

    if len(check_num_list) != len(set(check_num_list)):
        return res
    else:
        res = sum(check_num_list)
        return res

print(sum_values())