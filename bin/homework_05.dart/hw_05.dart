import 'book.dart';
import 'library.dart';

void main() {
  Book book1 = Book('Fourth wing', 'Rebecca Yarros'); //через обычный конструктор
  Book book2 = Book.withRating('Caraval', 'Stephanie Garber', 9.9); //через именованный withRating
  Book book3 = Book('Martin Eden', 'Jack London'); 
  book3.raiting = 9.0; //через сеттер рейтинга

  Library cityLib = Library('City Library');
  
  //Добавляем книги в библиотеку
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

//Выводим сптсок книг
  cityLib.showBooks();

//Выводим кол-во книг
print('Total books in library: ${cityLib.totalBooks}');
}