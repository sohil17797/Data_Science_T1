# import numpy as np
#
# arr = (np.arange(0,9).reshape(3,3))

# print(arr);
# list1 = [1,2,3,4,5,6]
# list2 = [7,8,9]
# list1.extend(list2)
# print(list1)
# list2.extend(list1)
# print(list2)

# list1 = [1,2,4,6,8,9,3,5,7]
# list1.remove(1)
# print(list1)
# list1.insert(0,21)
# print(list1)
# print(list1.pop(0))
# print(list1)
# list1.reverse()
# print(list1)
# list1.sort()
# print(list1)

# a= 0;
# for i in range(0,10):
#     if i<10:
#         print(a,end=",")
#         a+=1

# animals = ["cat", "dog", "Lion"]
#
# for a in animals:
#     print(a,len(a))

# Create a sample collection
# users = {'Hans': 'active', 'Éléonore': 'inactive', '景太郎': 'active'}
#
# # Strategy:  Iterate over a copy
# for user, status in users.copy().items():
#     if status == 'inactive':
#         del users[user]
#         print(user)
#
# # Strategy:  Create a new collection
# active_users = {}
# for user, status in users.items():
#     if status == 'active':
#         active_users[user] = status
#         print(active_users)

# number = [1,2,3,4,5,6,7,8,9]
# even = []
# odd = []
# for i in number:
#     if i%2 == 0:
#         even.append(i)
#     else:
#         odd.append(i)
#
# print("even is",even)
# print("odd is",odd)

# print(list(range(5,10)))
#
# l1 = ['hello', 'how', 'are', 'you', '?']
# for i in range(len(l1)):
#     print(i, l1[i])

# print(sum(range(6)))
#
# for i in range(2, 15):
#     for j in range (2, i):
#         if i % j == 0:
#             print(i, 'equals to ', j, '*', i//j)
#             break
#     else:
#         print(i, "is a prime number")

# num = 31;
# if num>1:
#     for i in range(2, int(num/2)+1):
#         if num % i == 0:
#             print(num, 'is not prime number')
#             break
#     else:
#         print(num, 'is prime number')

# li = ['helo','how','are','you']
#
# for i in li:
#     print(i)

# li = [1,5,9,'hello']
#
# for i in li:
#     if str(i).isnumeric() and i > 6:
#         print(i)

# l = [1,2,3,4,5,'rg','lj','uy','gf']
# num = []
# st = []
# for i in l:
#     if str(i).isnumeric():
#        num.append(i)
#     else:
#         st.append(i)
# print(num)
# print(st)
#
# i = 0;
# while(i<10):
#     print(i,end=",")
#     i+=1
#
# i = 0
# while(1):
#     i = int(input("please enter a number"))
#
#     if i < 100:
#         continue
#     else:
#         print("greater than 100")
#         break


# Doc string is the frist line of any function.


# def add(a, b):
#     """This function for addition"""
#     return a+b
# print(add.__doc__)
# print(add(5,7))

# num1 = input()
# num2 = input()
# try:
#     print("sum of num1 and num2 is ",int(num1)+int(num2))
# except Exception as e:
#     print(e)
#
# print("hello")
#
# num1 = input()
# num2 = input()
#
#
# def math(a, b):
#     try:
#         return int(a) + int(b)
#     except Exception as e:
#         print(e)
#
#
# print(math(num1, num2))

# Guess the number

# guess = 50
# num_of_chance = 1
# chance = 8
# while num_of_chance <= 9:
#     guess_num = (int(input("Enter the number : \n")))

#     if guess_num < 50:
#         print("Please Enter the Higher number: \n")
#     elif guess_num > 50:
#         print("Please Enter the Lesser number:\n ")
#     else:
#         print("You got the number")
#         print("you took " + str(num_of_chance) + " 50number of chances to get the number")
#         break
#     print("num of chance left is : ", chance)
#     chance -= 1
#     num_of_chance += 1
# if num_of_chance > 9:
#     print("game over")

# from playsound import playsound
# playsound("C:\\Users\\Dell\\Music\\MONEY.mp3")


import matplotlib.pyplot as plt
#
# x= [1,2,3,4,5,6,7,8,9]
# y= [1,2,3,4,5,6,7,8,9]
#
# plt.plot(x,y)
# plt.show()

import seaborn
