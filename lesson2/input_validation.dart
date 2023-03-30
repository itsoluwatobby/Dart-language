import 'dart:io';

void main(List<String> args) {
  stdout.writeln("Please enter a number in a range of 1 - 100");
  int number = int.parse(stdin.readLineSync()!);

  while (number < 1 || number > 100){
    print("Number is not valid");
    print("Please enter a number in a range of 1 - 100");
    number = int.parse(stdin.readLineSync()!);
  }

  print("$number is valid");
}