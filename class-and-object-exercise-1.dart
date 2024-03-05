class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}

void main() {
  Car myCar = Car('hilux', 'D4D', 2006);
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
}
