
typedef Action = void Function(int);

void main(List<String> args) {
  //var name = 'Peter';
  
  var values = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var newValues = <int>[];

  //var sub = (int num) => newValues.add(num * 5);
  //listOperation(values, sub);

  //listOperation(values, (p0) { newValues.add(p0 * 5); });
  listOperation(values, (p0) => newValues.add(p0 * 5));
  newValues.forEach(print);
  print(newValues);
}

// anonymous function
// var sum = (int num1, int num2) => num1 + num2;

// int calculateSum(int num1, int num2) => num1 + num2;

// String printUserDetails({int? age, required String name}){
//   return age != null ? 'Your name is $name and you are $age years old' : 'Your name is $name';
// }

// void printHello(String name){
//   print('Hello world ${name.toUpperCase()}');
// }

void listOperation(List<int> list, Action action){

  for (var item in list){
    action(item);
  }
}

// void listOperation(List<int> list, void Function(int) action){

//   for (var item in list){
//     action(item);
//   }
// }
