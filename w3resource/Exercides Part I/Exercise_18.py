
numbers = []
result = 0

for number in range(3):
    numbers.append(int(input("Enter value: ")))
    result += numbers[number]

print(numbers)

if numbers[0]==numbers[1]==numbers[2]:
    result = result*3
    print("Result is: ", result)
else:
    print("Result is: ", result)