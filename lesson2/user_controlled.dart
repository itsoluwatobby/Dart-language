import 'dart:io';

void main(List<String> args) {
  print("How high should i goto square numbers");

  int num = int.parse(stdin.readLineSync()!);

  print('value                 value Squared');
  print('-----------------------------------');

  for (int i = 1; i <= num; i++) {
    print('$i                      ${i * i}');
  }
}
