import 'dart:io';

enum DayOfTheWeek{
  Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}
void main(List<String> args) {
  
  //DayOfTheWeek today = DayOfTheWeek.Friday;
  stdout.writeln("Please enter your name: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Your age is $age");
}

