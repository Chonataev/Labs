def echo_student_list(name:str,email:str,age:int):
    return print("Здесь может быть ваша реклама ;D",name,email,age)
name = input('Enter your name(required): ')
email = input('Enter your email(required): ')
age = int(input('Enter your age(required):  '))

echo_student_list(name,email,age)
