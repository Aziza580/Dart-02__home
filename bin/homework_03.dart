import 'dart:ffi';

void main(){
  for (int i = 1;  i <= 30; i++ ){
   if (i % 3 == 0 && i % 5 == 0) {
    print('FizzBuzz');
    } else if (i % 3 == 0){
    print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  int positiveNumbers = 0;
  for (int number in numbers) {
    if (number > 0) {
      positiveNumbers++;
    }
  }
  print('Positive numbers count:: $positiveNumbers');
  int sum = 0;
  for (int number in numbers) {
    if (number > 0) {
      sum += number;
    }
  }
  print('Average of positive numbers:: $sum');

  Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};
    fruits.forEach((key, value) {
      if(value > 0){
    print(' Available: $key ($value pcs)');
      }
    });
  }