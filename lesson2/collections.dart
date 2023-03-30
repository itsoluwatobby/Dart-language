
void main(List<String> args) {
  // collections
  // Lists(Arrays)

  var carType = <String>['Honda', 'Mercedes', 'BMW', 'Volvo'];
  final List<String> carTypes = ['Honda', 'Mercedes', 'BMW', 'Volvo'];
  carTypes.sort();
  //print(carTypes.toList());

  carTypes.add('Jeep');
  carTypes.insert(2, 'Toyota');

  carTypes.removeWhere((element) => element == 'Volvo');
  carTypes.clear();

  // for (var car in carTypes){
  //   print(car);
  // }

  // SET
  var euLanguages = {'English', 'Russian', 'French', 'German'};

  // union, intersection, difference
  var afLanguages = {'English', 'Swahili', 'Arabic', 'Yoruba'};
  // print(euLanguages.elementAt(2));
  // print(euLanguages.union(afLanguages).singleWhere((element) => element.toLowerCase() == 'Yoruba'.toLowerCase()));
  // print(euLanguages.difference(afLanguages).);
  // print(euLanguages.intersection(afLanguages));

  // Maps
  var user1 = <String, dynamic>{
    'username': 'Peter',
    'password': 'peter123',
    'role': 'admin',
    'staffNr': 9911
  };

  Map<String, dynamic> user2 = {
    'username': 'Peter',
    'password': 'peter123',
    'role': 'admin',
    'staffNr': 9911
  };

  var password = user1['password'] as String;
  //print(password.length);

  //assessing values
  //user1['ipAddress'] = '154-587-554-8754';
  var ipAddress = user1['ipAddress'];
  var loggedIn = <String, dynamic>{'loggedIn': true};
  user2.addEntries(loggedIn.entries);

  Exception message = new Exception('Invalid key');

  // print(ipAddress != null ? 'IPaddress is - $ipAddress' : message);
  // print(user2);

  // print('\n');

  // for (var entry in user2.entries){
  //   print('${entry.key} : ${entry.value}');
  // }

  var map1 = <String, dynamic>{
    'student': 'Peter',
    'mark': 40
  };

  var map2 = <String, dynamic>{
    'student': 'Paul',
    'mark': 76
  };

  var map3 = <String, dynamic>{
    'student': 'James',
    'mark': 89
  };

  var marks = <Map<String, dynamic>>[map1, map2, map3];

  var totalMarks = 0;

  for (int i = 0; i < marks.length; i++){
    print('${marks[i]['student']} has a mark of ${marks[i]['mark']}\%');
    totalMarks += marks[i]['mark'] as int;
  }
  totalMarks = totalMarks ~/ marks.length;
  print('\n');
  print('The average of the marks is $totalMarks\%');

}
