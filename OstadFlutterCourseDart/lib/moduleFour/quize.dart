class Vehicle {
void drive() {
print("Driving vehicle...");
}
}
class Car extends Vehicle {
void honk() {
print("Car honking...");
}
}
void main() {
Car myCar = Car();
myCar.drive();
myCar.honk();
}