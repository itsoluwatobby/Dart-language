import 'dart:io';

void main(List<String> args) {
  print('Enter a file name to read from: ');
  var fileName = stdin.readLineSync()!;

  final lines = File(fileName).readAsLinesSync();
  lines.removeAt(0);

  var sum = 0.0;

  var students = [];

  for (var line in lines){
    final values = line.split(',');
    sum += double.parse(values[2]);
    //print('${values[0]} ${values[1]} with a mark of ${values[2]}');
    
    students.add({
      'firstName': values[0], 
      'lastName': values[1],
    });
  }
  // print('');
  //   print((sum/lines.length).toStringAsFixed(2));
  // print('');
  // for (var student in students)  print(student);

  
}