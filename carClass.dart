// create car class
class Car {
  // private attributes
  String? _model;
  int? _year;
  double _speed = 0.0;
// constructor > to initialize the car's model and year
  Car({String? model, int? year}) {
    this._model = model;
    this._year = year;
  }
// Setter for speed and ensure speed cannot be negative
  set speed(double speed) {
    if (speed > 0) {
      this._speed = speed;
    } else {
      throw Exception('the speed can\'t be negative');
    }
  }

// Getter for model
  String get model {
    return this._model!;
  }

// Getter for year
  int get year {
    return this._year!;
  }

// Getter for speed
  double get speed {
    return this._speed;
  }

// // accelerate function > to increase speed
  void accelerate({double? increment}) {
    this._speed += increment!;
  }

// decelerate method > to decrease speed and ensure it doesn't go below zero
  void decelerate({double? decrement}) {
    double checkSpeed = _speed;
    if ((checkSpeed -= decrement!) >= 0) {
      this._speed -= decrement;
    } else {
      throw Exception('the speed can\'t be negative');
    }
  }

// printCarInfo method > to display the car’s details and current speed
  void printCarInfo() {
    print('Model of this car is $_model');
    print('Year of this car is $_year');
    print('Speed of this car is $_speed');
  }
}
