class Animal {
  //here "directionOfMoving" is the class variable
  String directionOfMoving = "Class Veriable";
  //method
  //here "directionOfMoving" is the variable for the method
  void moving(String directionOfMoving) {
    print(directionOfMoving);
    //to access the calss variable, use this key word
    print(this.directionOfMoving);
  }

  late String name;

  //constractor of Animal class
  Animal(String name) {
    this.name = name;
  }
}

void main() {
  Animal cat = Animal("Biral");
  cat.moving("Method Variable");
}
