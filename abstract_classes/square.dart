import 'rectangle.dart';

class Square extends Rectangle {
  Square({
    required double side,
  }) : super(length: side, width: side);

  @override
  double getArea() => length * width;

}
