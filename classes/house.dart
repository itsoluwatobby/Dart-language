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

  set numOfWindows(int numOfWindows) => this._numOfWindows = numOfWindows;
  set numOfDoors(int numOfDoors) => this._numOfDoors = numOfDoors;
  set typeOfRoof(String typeOfRoof) => this._typeOfRoof = typeOfRoof;
  set typeOfWalls(String typeOfWalls) => this._typeOfWalls = typeOfWalls;

  int get numOfWindows => this._numOfWindows;
  int get numOfDoors => this._numOfDoors;
  String get typeOfWalls => this._typeOfWalls;
  String get typeOfRoof => this._typeOfRoof;

  void printData() {
    print('The number of doors in the house: ${this._numOfDoors}');
    print('The number of windows in the house: ${this._numOfWindows}');
    print('The type of roof in the house: ${this._typeOfRoof}');
    print('The type of walls in the house: ${this._typeOfWalls}');
  }

}
