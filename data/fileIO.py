'''

r : r mode opens a file for read-only.
w : w It just opens a file for writing and if there is already some data present in the file, it overwrites it.
x : x is used to create a new file. It does not work for an already existing file.
a : a stands for append, which means to add something to the end of the file.
t : t mode is used to open our file in text mode and only proper text files can be opened by it.
b : b stands for binary and this mode can only open the binary files, that are read in bytes.
+ : In plus mode, we can read and write a file simultaneously.
r and t modes are default modes
'''

# to read file
# f = open("sohil.txt","rt")
# print(f.read(5))
# f.close()

# line by line in ittret

# f = open("sohil.txt")
#
# for line in f:
#     print(line,end="")
#
# f.close()


# f = open("sohil.txt","rt")
# print(f.readlines())

# print(f.readline())
# print(f.readline())
# print(f.readline())
# content = f.readline()

# f.close()

# import matplotlib.pyplot as plt

# x= [1,2,3,4,5,6,7,8,9]
# y= [1,2,3,4,5,6,7,8,9]

# plt.plot(x,y)
# plt.show() 

# f = open('sohil.txt','r')
# content = f.read()
# print(content)

# f.close()

#w will create a neew file and if file exist then it will overwrite the file
# f = open('hello','w')
# f.write("hello from the file")
# f.close()

#a will add content at end of the line
# and if file not exist then it will create new file

# f = open('hello','a')
# f.write("\nhello again from file")
# f.close()

#authomatic open file with statement, no need to close file

# with open('sohil.txt','r') as f:
#     a = f.read(3)
# print(a)