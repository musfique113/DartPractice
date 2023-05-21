//question2
// class Animal {
// void eat() {
// print("Animal eating...");
// }
// }
// class Cat extends Animal {
// void meow() {
// print("Meow!");
// }
// }
// void main() {
// Animal myCat = Animal();
// myCat.meow();
// }

// class Shape {
// void draw() {
// print("Drawing shape...");
// }
// }
// class Circle extends Shape {
// @override
// void draw() {
// print("Drawing circle...");
// }
// }
// void main() {
// Circle myCircle = Circle();
// myCircle.draw();
// }

// class Animal {
// void eat() {
// print("Animal eating...");
// }
// }
// class Lion extends Animal {
// @override
// void eat() {
// super.eat();
// print("Lion eating meat...");
// }
// }
// void main() {
// Lion myLion = Lion();
// myLion.eat();
// }

abstract class Animal {
void makeSound();
}
class Dog extends Animal {
@override
void makeSound() {

print("Dog barking...");
}
}
void main() {
Animal myAnimal = Dog();
myAnimal.makeSound();
}