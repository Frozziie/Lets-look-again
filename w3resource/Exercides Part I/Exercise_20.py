sentence = ""
sentence_repeated = ""
numbers_of_repetitions = 0

sentence = input("Enter a sentence: ")
numbers_of_repetitions = int(input("How many copies of the given string do you want to view?: "))

for i in range(numbers_of_repetitions):
    sentence_repeated = sentence_repeated + sentence

print(sentence_repeated)
