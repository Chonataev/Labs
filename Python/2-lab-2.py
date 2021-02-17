word = input('Введите слово: ')
letter = input('Введите букву: ')
i=0
controller=0
while i<len(word):
    if(letter==word[i]):
        print(i)
        controller+=1
        i=i+1
    else:
        i=i+1
if(controller<1):
    print(-1)
