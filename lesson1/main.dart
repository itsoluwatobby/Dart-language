void main(){
  
  double floatNumbers = 10.6;

  int integers = 18;

  String text = 'Hello World';

  bool truthy = true;

  int firstNumber;
  int secondNumber;

  firstNumber = 10;
  secondNumber = 20;

  double average = (firstNumber + secondNumber) / 2;
  print("Average of " + firstNumber.toString() + " and " + secondNumber.toString() + " is " + average.toString());

  print('Average of ${firstNumber - 5} and $secondNumber is $average');

}