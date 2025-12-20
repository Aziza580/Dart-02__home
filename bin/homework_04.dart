int totalCalls = 0; //Изначально 0, с помощью totalCalls++ добавляется 1 после каждого вызова в main()
void main() {
  //Вызов greet()
  greet();
  greet();
  greet();

//Вызов introduce()
  introduce('Alex', 25);
  introduce('Beka', 18);
  introduce('Sabrina', 16);

//Вызов addNumbers()
  int sum = addNumbers(5, 8);
  print('Sum of 5 and 8 is $sum.');

//Вызов calculateDiscount()
  double pr1 = calculateDiscount(price: 100);
  print('Final price: $pr1');
  double pr2 = calculateDiscount(price: 100, discount: 5);
  print('Final price: $pr2');
  double pr3 = calculateDiscount(price: 100, discount: 5, tax: 10);
  print('Final price: $pr3');

//Финальный вывод
  print('Total function calls: $totalCalls');
}

void greet() {
  totalCalls++; //Каждый вызов greet() автоматически увеличит totalCalls.
  print('Hello! Welcome to Dart programming!');
}

void introduce(String name, int age) {
  totalCalls++;
  print('My name is $name and I am $age years old.');
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b; //Вернуть сумму
}

double calculateDiscount({
  required double price,
  double discount = 0, //Параметры по умолчанию
  double tax = 0,      //Параметры по умолчанию
}) {
  totalCalls++;
  double finalPrice 
  = price - (price * discount / 100) + (price * tax / 100); //Функция
  return finalPrice;
}
