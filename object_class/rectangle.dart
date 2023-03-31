class Rectangle {
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

  @override
  String toString() {
    // TODO: implement toString
    return 'Rectangle length: $_length\nRectangle width: $_width';
  }

  @override
  operator ==(covariant Rectangle object) => 
  this._length == object._length && this._width == object._width;
  
  Rectangle operator *(int val){
    return Rectangle(length: this._length * val, width: this._width * val);
  }
}
