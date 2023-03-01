from functools import reduce
l1 = [2,3,4,5]

sum = lambda a,b: a+b

print(reduce(sum, l1))