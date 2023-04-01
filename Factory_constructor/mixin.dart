class Animal {
  void breathe() => print('Breathing');
}

class Dolphin extends Animal with Swimming {
}

class Shark extends Animal with Swimming {}

class Bat extends Animal with Flying {}

class Dove extends Animal with Flying {}

class Dog extends Animal with Swimming {}

mixin Swimming{
  void swim() => print('Swimming');
}

mixin Flying{
  void fly() => print('Flying');
}

void main(List<String> args) {
  print('object');
}
