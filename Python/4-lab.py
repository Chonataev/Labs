myCalc = dict()
myFile = open('names.txt')
myList = ' '.join(myFile).split()

for word in myList:
    if word in myCalc:
        myCalc[word] += 1
    else:
        myCalc[word] = 1
print(myCalc)

