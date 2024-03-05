class Car {
  String model;
  String brand;
  int year;
  Car(this.brand, this.model, this.year);
  void makeSound() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('nissan', 'patrol', 2001);
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
  myCar.makeSound();
}
