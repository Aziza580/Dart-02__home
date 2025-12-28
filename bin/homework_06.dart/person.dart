//enum - это перечисленние фиксированных значений
enum Subject { math, physics, english, history }

class Person{
  String? fullName;
  int _age;
  bool isMarried;

  Person(this.fullName, this._age, this.isMarried); //Родительский класс
   int get age => _age;

  set age(int newAge) {
    if (newAge >= 0){
      _age = newAge;
    } else {
      print('Error: age cannot be negative.');
    }
  }
  void introduce() {
    String married = isMarried ? 'Yes' : 'No';
    print('Hi! My name is $fullName. I am $age years old. Married: $married');
  }
}

//Student - дочерний класс
class Student extends Person {  //extends - наследует (от Person, родителя)

  Map<Subject, double> marks;

  Student(
    String fullName, int age, bool isMarried, this.marks) : super(fullName, age, isMarried); //super - вызов конструктора родителя

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries){
      print('${entry.key.name}: ${entry.value}'); //entry.key - предмет, entry.value - оценка
      //.name убирает Subject. при выводе
    }
  }

  double calculateAverage() {
    double sum = 0;

    for (var value in marks.values) {
      sum += value;
    }
    return sum / marks.length;
  }

// Переопределение / Перезапись метода
  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
    }
  }

  class Teacher extends Person{
    int experience;
    Teacher(super.fullName, super._age, super.isMarried, this.experience);

    static double _baseSalary = 50000;
    //Обычные поля принадлежат обьектам
    //Статичные поля принадлежат классам

  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      for (int year = 4; year <= experience; year++) {
        salary *= 1.05;
      }
    }
    if(isMarried) {
      salary += 5000;
    }
    return salary;
    }

    @override
    void introduce() {
      super.introduce();
      print('Expirience: $experience years. Salary: ${calculateSalary()}');
    }
  }
 