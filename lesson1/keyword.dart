void main() {
  
  // var keyword

  // var age = 10;
  // age = 11;

  // final keyword
  //final store = getLastName('Sam'); //is a runtime constant
  // const keyword
  //const tamp = 5; //const is a compiled time constant

  // dynamic keyword
  dynamic school = 65;
  school = 'name';

  School student = new School();
  student.setDetails('Mark Angel', 25, 'Mathematics');

  print(student.getDetails());
}

class School extends Courses{
  var name;
  var age;
  //Float gpa;

  void setDetails(String name, int age, String subjects){
    this.name = name;
    this.subjects = subjects;
    this.age = age;
  }

  String getDetails(){
    var names = this.name.toString().toUpperCase();
    return 'My name is $names and I am $age years old';
  }
}

class Courses{
  var subjects;
  var teachers;
}

// String getLastName(var name){
//   return name;
// }

