#Если хотите можете убрать часть добавления массива и начать с его проверки
listochek = [];
i=0 
k=0 
j=0
controller = 0
var = int(input('Сколько чисел должно быть в массиве: '))
while i<var:
    iterrator = int(input('Введите элемент массива: '))
    listochek.append(iterrator)
    i+=1
print(listochek)

for k in listochek:
    if(listochek.count(k)>1):
        controller+=1
if(controller>0):
    print(False)
else:
    print('Все ok')
