# class Employee:
#     def __init__(self, name, salary, surname):
#         self.name = name
#         self.salary = salary
#         self.surname = surname
    
#     def printdetails(self):
#         print(f"Fname is {self.name}")
#         print(f"salary is {self.salary}")
#         print(f"Lname is {self.surname}")
    
#     def hello(self):
#         print("hello from parent")
        
# class Child(Employee):
    
#     def details(self):
#         print("Ronak details")
    
#     def hello(self):
#         print("hello from child 1")
        
# class Child2(Child):
    
#     def hello(self):
#         super().hello()
#         print("hello from child 2")
        
# sohil = Employee('sohil', 1000, 'Gangani')
# Ronak = Child('Ronak', 900, 'Hirpara')
# jerry = Child2('jerry', 500, 'devd')
# sohil.printdetails()
# Ronak.printdetails()
# Ronak.details()

# sohil.hello()
# Ronak.hello()
# jerry.hello()

# class Employee:
#     salary = 30000
#     bonus = 5000
    
#     @property
#     def totalincome(self):
#         return self.salary + self.bonus
    
# e = Employee()
# print(e.totalincome)

# practice 

class Complex:
    def __init__(self, i, j):
        self.real = i
        self.imagenary = j
        
    def __add__(self, a):
        return Complex(self.real + a.real, self.imagenary + a.imagenary)
    
    def __str__(self) -> str:
        return f'{self.real } + {self.imagenary}i'
    
c1 = Complex(7, 8)
c2 = Complex(1, 5)
print(c1 + c2)
        
    