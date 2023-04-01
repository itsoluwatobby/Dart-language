extension ListAverage on List<int>{
  double average(){
    var average = this.reduce((value, element) => value + element);
    return average/this.length;
  }
}

extension ListSum on List<int>{
  double sum(){
    return (this.reduce((value, element) => value + element)).toDouble();
  }
}