import 'carClass.dart';

void main() {
  // create object from Car class by constructor
  Car carOne = Car(model: 'Toyota Corolla', year: 2020);

  // use Car class method > printCarInfo
  carOne.printCarInfo();
  print('***************');
  // handle code if there is an exception
  try {
    // use setter > speed
    carOne.speed = -20;
  } catch (exception) {
    print(exception);
  }
  print('***************');
  // use Car class methods > accelerate, decelerate, printCarInfo
  carOne.accelerate(increment: 50);
  carOne.decelerate(decrement: 20);
  carOne.printCarInfo();
  print('***************');
  // handle code if there is an exception
  try {
    // use Car class method > decelerate
    carOne.decelerate(decrement: 40);
  } catch (exception) {
    print(exception);
  }
  print('***************');
  // use Car class method > printCarInfo
  carOne.printCarInfo();
  print('***************');
  // use getter > model, year, speed
  print(carOne.model);
  print(carOne.year);
  print(carOne.speed);
}
