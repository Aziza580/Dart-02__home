class Book{
  String _title; //_ инкапсуляция
  String _author;
  double _raiting = 0;

  Book(this._title, this._author); //Конструктор
  Book.withRating(this._title, this._author, double raiting) { //Именованый конструктор
  this.raiting = raiting; //Вызов сеттера
  }

//Геттеры
  String get title => _title;
  String get author => _author;
  double get raiting => _raiting;
  
  //Сеттер
  set raiting(double raiting2) {
    if(raiting2 >= 0 && raiting2 <= 10) {
      raiting2 = _raiting;
    } else {
      print('Error, the raiting must be from 0 to 10');
    }
  }
  void displayInfo() {
    print('Book info: Title: $title. Author: $author. Rating: $raiting');
  }
}
