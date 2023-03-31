import 'rectangle.dart';

void main(List<String> args) {
  var rectangle = Rectangle(length: 10, width: 4);
  var rectangle2 = Rectangle(length: 10, width: 5);

  var newRect = rectangle2 * 2;

  print(rectangle);
  print(rectangle == rectangle2);

  print(newRect);
}