void main(List<String> args) {
  // assertion operator ! is assgined to non-nullable variable
  // if null-operator ??
  int? x = 5;
  int y;

  //y = 20 - x;

  // if(x == null){
  //   print('The value x do not exist');
  //   y = 0;
  // }
  // else  y = 20 + x;
  // print(y);

  int age = 50;
  double price = 1500.0;

  int? discount;

  if (age >= 60) discount = 20;

  //discount = discount == null ? 0 : discount;  //same as discount = discount ?? 0
  discount = discount ?? 0;

  double finalPrice = price - discount;
  //print(finalPrice);

  final months = ['January', 'February', 'March', null];
  months.forEach(print);
  
  print(months.length);
}