//OOP Live test Module3
class Person {
  String name;
  int age;
  String address;

  //constructor
  Person(this.name, this.age, this.address);

  //method
  void sayHello() {
    print("Hello, my name is $name.");
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
