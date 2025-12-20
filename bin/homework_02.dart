import 'dart:async';
import 'dart:io';
import 'dart:isolate';

void main() {
  print('Enter the temperature');
  //! - логическое отрицание НЕ (NOT)
  int temperature = int.parse(stdin.readLineSync()!); //Для числовых значений
  print('Enter your age');
  int age = int.parse(stdin.readLineSync()!); 
  if ((age > 20 && age < 45) && (temperature > -20 && temperature < 30)) {
    print('You can go for a walk.');
  } else if ((age < 20) && (temperature > 0 && temperature < 28)) {
    print('You can go for a walk.');
  } else if ((age > 45) && (temperature > -10 && temperature < 25)) {
    print('You can go for a walk.');
  } else {
    print('Stay home.');
  }

  print('Enter the day of the week (Monday, tuesday, wednesday...');
  String day = stdin.readLineSync()!; //Читает одну строку текста, введенную пользователем
  String theDay = day.toLowerCase(); //Переводит значение в нижний регистр

  switch(theDay){
    case 'monday':
    print('It\'s the start of the week!');
    break;
    case 'tuesday':
    print('Keep going, almost weekend!');
    break; 
    case 'wednesday':
    print('Keep going, almost weekend!');
    break;
    case 'thursday':
    print('Keep going, almost weekend!');
    break;
    case 'friday':
    print(' Weekend is coming!');
    break;
    case 'saturday':
    print('Enjoy your weekend!');
    break;
    case 'sunday':
    print('Enjoy your weekend!');
    default:
    print('Invalid day.');
  }

  print('Enter your password.');
  String? password = stdin.readLineSync()!;
  if (password.isEmpty) { //Возвращает true, если встроке нет символов. Работает с String, List, Map, Set
    print('Passord cannot be empty.');
  }
  int length = password.length; //.length - количество символов, длина строчки
  if (length < 6) { //Вложенные конструкции if внутри других if
    print('Password too short.');
  } else {
    if (password.length >= 6) {
      if (password == 'dart123') {
        print('Access granted.');
      } else {
        print('Wrong password.');
      }
    }
  }
}