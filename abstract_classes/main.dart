import 'cube.dart';
import 'square.dart';

void main(List<String> args) {
  
  var square = Square(side: 15);

  var cube = Cube(side: 12);

  print(cube.getArea());
  print(cube.getVolume());
}