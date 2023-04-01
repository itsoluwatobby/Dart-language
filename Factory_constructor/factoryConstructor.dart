// factory constructors do not create an instance of a class unlike regular constructors
// keyword factory is the prefix used in creating one
// it can return a value and does not have access to this keyword
// FC are like static methods who's return type is class itself.

// ..........WHEN TO USE ONE.................
/**
 * Use FC when the creation of a new instance of an existing class is too expensive
 * Creating only on instance of the class
 * for returning sub-class instance of the class itself 
 */

class Reading {
  double value;
  Reading({required this.value});

  Reading.zero() : value = -999;

  @override
  String toString() {
    return '$value';
  }

  factory Reading.fromServer(Map<String, Object> server){
    final type = server['type'];
    final reading = server['reading'];

    switch(type)
    {
      case 'temp':
        final city = server['city'];
        if (city is String && reading is double){
          return Temperature(city: city, reading: reading);
        }
        else{
          return Temperature.zero();
        }
      case 'pressure':
        final object = server['object'];
        if (object is String && reading is double){
          return Pressure(objectTested: object, reading: reading);
        }
        else{
          return Pressure.zero();
        }
      default:
        return Reading.zero();
    }
  }
}

class Temperature extends Reading {
  String city;
  Temperature({
    required String city,
    required double reading,
  })  : this.city = city,
        super(value: reading);

  Temperature.zero()
      : city = '',
        super(value: -999);

  @override
  String toString() {
    return 'Temperature reading:\nReading: ${super.toString()}\nCity: $city\n';
  }
}

class Pressure extends Reading {
  String objectTested;

  Pressure({
    required String objectTested,
    required double reading,
  })  : this.objectTested = objectTested,
        super(value: reading);

  Pressure.zero()
      : objectTested = '',
        super(value: -999);

  @override
  String toString(){
    return 'Pressure reading:\nReading: ${super.toString()}\nObject tested: $objectTested\n';
  }
}


void main(List<String> args) {



  var fromServer = [
    {
      "type": "temp",
      "reading": 20.5,
      "city": "Kenya"
    },
    {
      "type": "pressure",
      "reading": 100.5,
      "object": "Gas cylinder"
    },
    {
      "type": "temp",
      "reading": 32.5,
      "city": "Congo"
    },
    {
      "type": "pressure",
      "reading": 200.5,
      "object": "Tyre"
    }
  ];

  var reading = <Reading>[];
  fromServer.forEach((e) => reading.add(Reading.fromServer(e)));

  //if (reading.value != -999.0) 
  reading.forEach(print);
}



// var values = [
//   {
//     "firstName": "Rack",
//     "lastName": "jack",
//     "gender": "man",
//     "age": 25,
//     "address": {
//       "streetAddress": "125",
//       "city": "San Andreas",
//       "state": "Cali",
//       "postalCode": "554125",
//     },
//     "phoneNumber": [
//       {"type": "home", "number": "45221255452"}
//     ]
//   }
// ];
