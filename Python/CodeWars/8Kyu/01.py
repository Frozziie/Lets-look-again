def to_camel_case_1(text):   
    index = 0

    if not text:
        return text
    else:
        text = text.replace("_","-").split("-")
        for word in text:
            if word[0].isupper() == False:
                text[index] = text[index].capitalize()
            index += 1

        text = "".join(text)
        if text[0].isupper():
            text = text.replace(text[0],text[0].lower())

    return text

def to_camel_case_2(text):
    
    new_text = ""

    if not text:
        return text
    else:
        # Convierto el string en una lista para trabajarlo más adelante.
        word_list = text.replace("_","-").split("-")
        
        for word in word_list:
            # Valido si me encuentro en la primer palabra de la lista..
            if word == word_list[0]:
                # Si la primer letra es mayúscula.. la primer letra de la primer palabra va a ser mayúscula.
                if word[0].isupper():
                    new_text = new_text + word.capitalize()
                # Sino.. la primer letra de la primer palabra va a ser minúscula.
                else:
                    new_text = new_text + word
            # Si NO me encuentro en la primer palabra.. aplico letra capital al resto de las palabras.
            else:
                new_text = new_text + word.capitalize()

    return new_text

# Test Cases
print(to_camel_case_2(''))
print(to_camel_case_2('the_stealth_warrior'))
print(to_camel_case_2('The-Stealth-Warrior'))
print(to_camel_case_2('A-B-C'))