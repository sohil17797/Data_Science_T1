# with open('poem.txt','w') as f:
#     a = f.write('twinkel twinkel little start')
# print(a)

# with open('poem.txt','r') as n:
#     b = n.read()
#     if 'twinkel' in b:
#         print("twinkle is present in poem")
#     else:
#         print("twinkle is not present in poem")

# def game():
#     return 505
    
# score = game()

# with open('highscore.txt','r') as f:
#     hisco = f.read()
# if  hisco=='':
#     with open('highscore.txt','w') as f:
#         f.write(str(score))

# elif int(hisco)< score :
#     with open('highscore.txt','w') as f:
#         f.write(str(score))

# find python from log file and write line number also
# content = True
# i=1
# with open('log.txt') as f:
      
#     while content:
#         content = f.readline()
        
#         if 'python' in content:
#             print("Yes python is present in log file at : ", i)
            
#         i+=1        

# with open("this.txt") as f:
#     content = f.read()
    
# with open ("copy.txt","w") as f:
#     f.write(content)

# file1 = 'this.txt'
# file2 = 'copy.txt'

# with open(file1) as f:
#     f1 = f.read()
    
# with open(file2) as f:
#     f2 = f.read()

# if f1 == f2:
#     print("Files are same")
    
# else:
#     print("files are not same")    

#remaning by create new and delete old file

# import os

# old = 'sample.txt'
# new = 'renamed.txt'

# with open (old) as f:
#     content = f.read()
    
# with open (new,'w') as f:
#     f.write(content)
    
# os.remove(old)
