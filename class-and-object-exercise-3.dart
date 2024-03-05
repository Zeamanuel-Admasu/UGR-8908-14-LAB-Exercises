class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void makeSound() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  void chargeBattery() {
    print('Charging the battery...');
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar('toyoto', 'vitz', 2000, 80);
  print('Brand: ${myElectricCar.brand}');
  print('Model: ${myElectricCar.model}');
  print('Year: ${myElectricCar.year}');
  print('Battery Life: ${myElectricCar.batteryLife} miles');
  myElectricCar.makeSound();
  myElectricCar.chargeBattery();
}
