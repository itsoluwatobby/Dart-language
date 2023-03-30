void main(List<String> args) {
  // collections
  // Lists(Arrays)

  var carType = <String>['Honda', 'Mercedes', 'BMW', 'Volvo'];
  List<String> carTypes = ['Honda', 'Mercedes', 'BMW', 'Volvo'];
  carTypes.sort();
  print(carTypes.toList());

  carTypes.add('Jeep');
  carTypes.insert(2, 'Toyota');

  carTypes.removeWhere((element) => element == 'Volvo');
  carTypes.clear();

  for (var car in carTypes){
    print(car);
  }

}