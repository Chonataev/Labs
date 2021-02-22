def equations(a,b,c,x):
    return a*x**2 + b*x + c

a = float(input("Введите a: "))
b = float(input("Введите b: "))
c = float(input("Введите c: "))

x = float(input("Введите x: "))
print(equations(a,b,c,x))
