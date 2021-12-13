text = " Is this is a text"

text = text.strip()

if text.startswith("Is"):
    print(text)
else:
    print("Is " + text)