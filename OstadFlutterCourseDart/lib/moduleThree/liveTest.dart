/* 
OOP Live test Module3
Create a Person class with the following properties:
- name: a string representing the name of the person
- age: an integer representing the age of the person
- address: a string representing the address of the person
The class should have the following methods:
- sayHello(): a method that prints "Hello, my name is $yourName." to the console
- getAgeInMonths(): a method that returns the age of the person in months
The class should also have a constructor that takes in the name, age, and address
parameters.
Use this keyword to refer to the instance variables inside the constructor and methods.
In the main() function, create an object of the Person class and initialise it with your own
name, age, and address. Call the sayHello() method to check if it prints the correct output
to the console. Call the getAgeInMonths() method and print the result to the console.
Hints
- Define the class constructor inside the class definition using the className() syntax.
- Use this keyword to refer to the instance variables inside the constructor and methods.
- Use the print() function to print output to the console.
- To call a method of an object, use the dot notation: objectName.methodName().
- To access a property of an object, use the dot notation: objectName.propertyName.
- Age in months = age * 12
*/

class Person {
  String name;
  int age;
  String address;

  //constructor
  Person(this.name, this.age, this.address);

  //method
  void sayHello() {
    print("Hello, my name is $name from $address");
  }

  //method
  int getAgeInMonths() {
    return age * 12;
  }
}

void main() {
  Person person = Person("Musfique", 22, "Mirpur,Dhaka");
  person.sayHello();
  int ageInMonths = person.getAgeInMonths();
  print("Age: $ageInMonths months");
}
