abstract class Rectangle {
  double _length;
  double _width;

  Rectangle({
    required double length,
    required double width,
  })  : _length = length,
        _width = width;

  double get length => _length;
  set length(double length) => _length = length;
  
  double get width => _width;
  set width(double width) => _width = width;

  double getArea();

}
