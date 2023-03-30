void main(List<String> args) {
  // collecton if
  // collecton for
  // spreads
  // copy collectons

  var user = {
    'username': 'jon@gmail.com',
    'admin': true,
  };

  var adminOther = [
    'rambow@gmail.com',
    'sam@gmail.com',
  ];

  var someMoreAdmin = [
    'captain@gmail.com',
    'danny@gmail.com',
  ];


  var admin = [
    'peter@gmail.com',
    'paul@gmail.com',
    'leo@gmail.com',
    if (user['admin'] as bool) user['username'],
    for (var other in adminOther) other,
    ...someMoreAdmin
  ];

  //copying collection
  var collection1 = [10, 20, 30, 40, 50];
  var collection2 = [...collection1];
  collection1.add(60);

  print(collection1);
  print(collection2);
}
