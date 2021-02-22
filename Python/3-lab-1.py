def equations(a,b,c,x):
    return a*x**2 + b*x + c

a = int(input("Введите a: "))
b = int(input("Введите b: "))
c = int(input("Введите c: "))

x = int(input("Введите x: "))
print(equations(a,b,c,x))
