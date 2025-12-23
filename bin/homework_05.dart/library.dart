import 'book.dart';

class Library{
  String? name;
  List<Book> _books = []; //Приватный список книг
  //Book, а не String внутри алмазных скобок, потому что здесь Book не просто название у нее есть свойства/поля

//Конструктор
//Принимает название библиотеки
  Library(this.name);

//Метод добавление книги в библиотеку
  void addBook(Book b) {
  _books.add(b); //Добавляем книгу
  }
  void showBooks(){
    print('Library: $name');
    print ('Book list:');
  for(int i = 0; i < _books.length; i++ ) {
    print('${i + 1}. ${_books[i].title}');
  }
  }

  int get totalBooks { //get для кол-ва книг
    return _books.length;
  }
}