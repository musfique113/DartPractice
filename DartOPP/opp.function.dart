void main() {
  // Create instances of Spacfication
  Spacfication mobileX = Spacfication("Samsung", 2021, 64);
  print("Mobile X - Model: ${mobileX.model}");
  print("Mobile X - Release Year: ${mobileX.releaseYear}");
  print("Mobile X - Memory Size: ${mobileX.memorySize} GB");

  Spacfication mobileY = Spacfication("Nokia", 2022, 128);
  print("Mobile Y - Model: ${mobileY.model}");
  print("Mobile Y - Release Year: ${mobileY.releaseYear}");
  print("Mobile Y - Memory Size: ${mobileY.memorySize} GB");

  Spacfication mobileZ = Spacfication("Motorola", 2023, 256);
  print("Mobile Z - Model: ${mobileZ.model}");
  print("Mobile Z - Release Year: ${mobileZ.releaseYear}");
  print("Mobile Z - Memory Size: ${mobileZ.memorySize} GB");

  // Create an instance of Human_Class
  Human xTy = Human("Musfique", 2, 2, "B rown", 2);
  print("Human - Name: ${xTy.name}");
  print("Human - Hands: ${xTy.hands}");
  print("Human - Eyes: ${xTy.eyes}");

  // Use methods of Human
  xTy.eating();
  xTy.moving();
}

// Blueprint for mobile specifications
class Spacfication {
  late String model;
  late int releaseYear;
  late int memorySize;

  // Constructor
  Spacfication(this.model, this.releaseYear, this.memorySize);

}

// Blueprint for a human
class Human {
  //poperties or attributes
  late int legs;
  late int hands;
  late String color;
  late int eyes;
  late String name;

  //defining global variable
  static var hairColour = "black";

  // Constructor
  Human(this.name, this.legs, this.hands, this.color, this.eyes);

  // Methods
  //function in a class is METHOD
  void moving() {
    print("I am moving $name");
  }

  // Methods
  //function in a class is METHOD
  void eating() {
    print("I am eating");
  }
}
