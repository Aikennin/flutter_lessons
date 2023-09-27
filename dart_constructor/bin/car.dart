void main() {
  var myCar = Car('Toyota', 'Camry', 2022);
  myCar.displayCarInfo();
  myCar.displayCarInfo();
}

class Car {
  String? make;
  String? model;
  int? year;
  bool isEngineRunning = false;

  Car(String make, String model, int year) {
    this.make = make;
    this.model = model;
    this.year = year;
  }

  void startEngine() {
    if (!isEngineRunning) {
      print('zapusk..');
      isEngineRunning = true;
    } else {
      print('uje rabotaet)');
    }
  }

  // Method
  void displayCarInfo() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
  }
}
