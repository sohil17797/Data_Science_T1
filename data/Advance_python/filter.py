l = [1, 2, 3, 4, 5, 6, 7, 8, 9]


def checker(num):
    if num >= 5:
        return True
    else:
        return False


print(list(filter(checker, l)))
