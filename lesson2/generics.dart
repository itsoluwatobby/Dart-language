

void main(List<String> args) {
  
  var doubleValues = <double>[12.5, 2.4, 6.6, 7.12, 8.4, 9.9];
  var stringValues = <String>['A', '&', '*'];

  var newDoubleValues = <double>[];
  var newStringValues = <String>[];

  // listOperation(doubleValues, (double value) => newDoubleValues.add(value * 5));
  // listOperation(stringValues, (String value) => newStringValues.add(value * 2));
  
  // print(newDoubleValues);
  // print(newStringValues);

  doubleValues.forEach((element) {
    var res = element * element;
    newDoubleValues.add(res.roundToDouble());
  });

  var newMapped = doubleValues.map((e) => e*2);
  newDoubleValues.forEach(print);
  print(newMapped.toList());
}

void listOperation<T>(List<T> list, void Function(T) action){
  for (var item in list) action(item);
}
