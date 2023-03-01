import numpy as np
# arr = np.array([1,2,3], ndmin=5)
# print(arr)

# print(arr.ndim)


# arr = np.array([1,2,3,4,5,6])

# print(arr[0] + arr[2])
# print(arr[:4] + arr[2])
# print(arr[:])
# print(arr[::-1])

# arr = np.array([[1,2,3],[4,5,6]])

# print(arr[1,-1])


# arr = np.array([[1,2,3],[4,5,6]], dtype='int')
# arr1 = arr.astype('float')
# print(arr)
# print(type(arr))

# arr = np.array([[1,2,3],[4,5,6]])
# x = arr.copy()
# print(x)
# x[0,0] = (20)
# print(arr)
# print(x)

# x =arr.view()
# print(x)

# x[0,0] = (20)
# print(arr)
# print(x)

# import numpy as np

# arr = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])

# x = arr.copy()
# y = arr.view()

# print(x.base)
# print(y.base)

# new = arr.reshape(4,3)
# print(new)

# a =  np.array([[1, 2, 3], [4, 5, 6]])

# newarr = a.reshape(-1)
# new = a.flatten()
# print(newarr)
# print(new)

# new = a.flat[5]
# print(new)

# arr = np.array([[1, 2, 3],[1, 2, 3]])
# print(arr)
# for x in arr:
#     print(x)


# arr = np.array([[1, 2, 3], [4, 5, 6]])

# for x in arr:
#   for y in x:
#     print(y)

# arr = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])

# for x in np.nditer(arr):
#     print(x)


# arr = np.array([[1, 2, 3, 4], [5, 6, 7, 8]])

# for x in np.nditer(arr[:, ::3]):
#   print(x)


# arr1 = np.array([1, 2, 3])

# arr2 = np.array([4, 5, 6])

# arr = np.concatenate((arr1, arr2))

# print(arr)


# arr1 = np.array([[1, 2], [3, 4]])

# arr2 = np.array([[5, 6], [7, 8]])

# arr = np.concatenate((arr1, arr2), axis=1)

# print(arr)

# a = np.array([1,2,3,1,5,1])

# new = np.array_split(a,3)
# print(new)

# x = np.where(a == 1)
# print(x)

# x = np.searchsorted(a, 1)
# 

# x = np.searchsorted(a, 7, side='right')
# print(x)

# arr = np.array([41, 42, 43, 44])

# x = arr[[True, False, True, False]]

# print(x)

from numpy import random

# x = random.randint(100)
# print(x)

# x = random.rand(10)
# print(np.floor(10 * x))

# x = random.choice([1,2,3,4,5,6])

# x = random.choice([3,5,1,5,8,9,6,7,4], size=(3, 5, 3))

# x = random.choice([3, 5, 7, 9], p=[0.1, 0.3, 0.4, 0.2], size=(100))
# arr = np.array([41, 42, 43, 44])

# print(random.permutation(arr))


# print(x)

#----------------------------NumPy Random--------------------------------------------------#
from numpy import random

# a = random.randint(200)
# print(a)

# print(random.rand())

# x= random.randint((100), size=(5))
# print(x)

# y = random.randint((200), size=(2,3,3))
# print(y)

# i=10

# for i in range(0,10):
#     print(np.floor(10 * (random.rand(1))))
#     # print(np.floor(10*x))
#     i+=1

# print(random.randint(100, size=(2,3)))

# print(random.randint(100,size=(2,3,2)))

# x = (np.floor(10 *random.rand(3,2)))
# print(x)

# print(random.rand(2,2))

# print(random.choice([1,2,3,4,5,6]))
# print(random.choice([1,2,3,4,5,6]))

# print(random.choice([1,2,3,4,5,6], size=(2,3)))

# print(random.choice(5,size=(3,5)))

# print(random.choice([1,3,5,7,9], size=(2,3)))

# print(random.choice([7,8,9], p=[0.3, 0.2, 0.5], size=(3,5)))

# a = np.array([1,2,3,4,5,6])
# random.shuffle(a)
# print(a)

# a = np.arange(1,10).reshape(3,3)
# random.shuffle(a)
# print(a)


# a = np.arange(1,10).reshape(3,3)
# print(random.permutation(a))
# print(a)

# import pandas as ps
# import matplotlib.pyplot as plt
# import seaborn as sns

# sns.distplot([0, 1, 2, 3, 4, 5])

# plt.show()

