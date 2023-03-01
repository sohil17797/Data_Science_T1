class Library:
    def __init__(self, books):
        self.books = books
        
    def display_books(self):
        for i in self.books:
            print(" "+ i)
            
    def bookissue(self, bookname):
        if bookname in self.books:
            print(f"You have been issued this {bookname} book")
        else:
            print("Sorry this book is not avalible at this time.")
            
    def returnbook(self, bookname):
        self.books.append(bookname)
        print(f"Thanks for returning this {bookname} book")
class Student:
    pass


if __name__ == "__main__":
    b = Library( ["Android", "C", "C++", "Python", "PHP"]     )
    b.display_books()