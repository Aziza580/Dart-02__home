import 'dart:io';

void main() {
  String myName = 'Aziza'; //Строковая переменная
    int myAge = 14; //Целочисленная переменная
    String myCity = 'Bishkek';
    String myJob = 'student';
    String myEnthusiasm = 'reading';
    //double - переменная с плавающей точкой (4.5)
    //bool - логическая переменная (true, false)

    print('Hello! My name is $myName.');
    print('I am $myAge years old and I live in $myCity'); 
    print('My profession is $myJob');
    print('In my free time, I enjoy $myEnthusiasm');


    int mySalary = 100000;
    int myYearSalary = mySalary * 12; //
    print('My yearly income: $myYearSalary USD');
    double bonus = myYearSalary * 1.10;
    print('My yearly income with 10% bonus: $bonus');

    String quote = ' Knowledge is power, but practice makes perfect. ';
    print(quote.trim()); //Удаление пробелов в начале и конце строки
    print(quote.toUpperCase()); //Преобразование строки в верхний регистр
    print(quote.replaceAll('practice', 'experience')); //Замена слова
    if (quote.contains('power')) { //Метод contains()
      print('Строка содержит слово: power');
    } else {
      print('Строка не содержит слово: power');
    }

    int apples = 5;
    int people = 2;
    //Арифметические операции
    print('Each person gets ${apples ~/ people}'); //Целочисленное деление
    print('Apples left ${apples % people}'); //Остаток от деления

    int currentYear = 2025;
    print('I was born in ${currentYear - myAge}.');

    var city = 'Kyoto';
    final country = 'Japan';
    const planet = 'Earth';
    city = 'Okayama';
    //Нельзя изменять значения final и const
    //country = 'USA'; Ошибка
    //planet = 'TOI-1452 b'; Ошибка
    print('City: $city');
    print('Country: $country');
    print('Planet: $planet');

    //var - значение может изменятся, тип определяется автоматически
    //final - константу (неизменяемое значение) можно вывести, сформировать во время выполнения кода
    //const - константа (неизменяемое значение) может содержать только конкретное значение, написанное во время написания программы

}