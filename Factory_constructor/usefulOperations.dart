class UsefulOperation{

  static double average(List<int> list){
    var average = list.reduce((value, element) => value + element);
    return average/list.length;
  }
}