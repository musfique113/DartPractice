main() {
  //instance
  Spacfication mobileX = Spacfication();
  mobileX.model = "Samsung";
  print(mobileX.model);

  Spacfication mobileY = Spacfication();
  mobileY.model = "Nokia";
  print(mobileY.model);

  Spacfication mobileZ = Spacfication();
  mobileZ.model = "Motorola";
  print(mobileZ.model);

  //instance of Human
  Human xTy = Human();
  xTy.eyes = 2;
  xTy.hands = 2;
  xTy.name = "Musfique";
  print(xTy.hands);

  //using properties of Human() 
  xTy.eating();
  xTy.moving();
}

//blueprint
class Spacfication {
  var model;
  var releseYear;
  var memerySize;
}

class Human {
  //variables as propoerties

  late int legs;
  late int hands;
  late String color;
  late int eyes;
  late String name;

  //behaviours as function but
  //a functon in "calss" is called methods
  void moving() {
    print("I am moving $name");
  }

  void eating() {
    print("I am eating");
  }
}
