l = [1,2,3,4,5]

def sqr(num):
    return num * num

print(list(map(sqr, l)))


l1 = [1,2,3]

def cube(num):
    return num ** num

print(list(map(cube, l1)))