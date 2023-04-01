import 'instructor.dart';

void main(List<String> args) {
  var eng101 = Course(
    name: 'Engineering Math 101',
    book: Book(
      name: 'Engineering Mathematics',
      isbn: '1-5425-4457-78554',
    ),
    instructor: Instructor(
      name: 'Kendrick Lomarh',
    ),
  );

  print(eng101);
}
