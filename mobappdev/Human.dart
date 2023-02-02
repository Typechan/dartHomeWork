class Human{
  String _name = "";
  int _age = 0;
  int _weight = 0;
  int _height = 0;
  String _dateOfBirth = "";
  String _address = "";

  String get name => _name;

  int get age => _age;

  String get address => _address;

  String get dateOfBirth => _dateOfBirth;

  int get height => _height;

  int get weight => _weight;

  set name(String value) {
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set address(String value) {
    _address = value;
  }

  set dateOfBirth(String value) {
    _dateOfBirth = value;
  }

  set height(int value) {
    _height = value;
  }

  set weight(int value) {
    _weight = value;
  }
}