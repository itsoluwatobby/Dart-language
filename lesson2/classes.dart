void main(List<String> args) {
  var house = House(
    numOfWindows: 10,
    numOfDoors: 3,
    typeOfRoof: 'wood',
    typeOfWalls: 'wood',
  );
  var house2 = House(
      numOfWindows: 7,
      numOfDoors: 5,
      typeOfWalls: 'concrete',
      typeOfRoof: 'wood');

  
  house2.printData();
}

class House {
  int _numOfWindows = 0;
  int _numOfDoors = 0;
  String _typeOfWalls = '';
  String _typeOfRoof = '';

  House(
      {required int numOfWindows,
      required int numOfDoors,
      required String typeOfWalls,
      required String typeOfRoof})
      : this._numOfWindows = numOfWindows,
        this._numOfDoors = numOfDoors,
        this._typeOfWalls = typeOfWalls,
        this._typeOfRoof = typeOfRoof;

  void printData() {
    print('The number of doors in the house: ${this._numOfDoors}');
    print('The number of windows in the house: ${this._numOfWindows}');
    print('The type of roof in the house: ${this._typeOfRoof}');
    print('The type of walls in the house: ${this._typeOfWalls}');
  }
}
