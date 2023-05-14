import 'dart:io';

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  int age;

  static int numberOfCars = 0;

  //constructor 
  Car(this.brand, this.model, this.year, this.milesDriven, this.age) {
    numberOfCars++;
    age = DateTime.now().year - year;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  //getter method
  double getMilesDriven() => milesDriven;

  String getBrand() => brand;

  String getModel() => model;

  int getYear() => year;

  int getAge() => age;

  static int getNumberOfCars() => numberOfCars;
}

void main() {
  Car car1 = Car("Toyota", "Corolla", 2022, 0, 10);
  car1.drive(100);

  Car car2 = Car("Honda", "Civic", 2021, 0, 12);
  car2.drive(200);

  Car car3 = Car("Nissan", "Altima", 2020, 0, 13);
  car3.drive(300);

  print("Car 1");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles Driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()}");
  print("-----------------------------------------------");

  print("Car 2");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles Driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()}");
  print("-----------------------------------------------");

  print("Car 3");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles Driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()}");
  print("-----------------------------------------------");

  print("Total number of cars: ${Car.getNumberOfCars()}");
}
