class Human {
  //prefedined objects of Human Class
  var name = "Rafi";
  var hand = "two";
  //reusable object , which can be inisialize in any INSTANCE of Human class
  var eyesCount;

  //Human(); and Human(){} are same
  //same as class name = Constructor
  Human() {
    print("This a method of Human class");
  }

}

void main() {
  Human fromEarth = Human();
  //using the predefined objects in Human class
  print(Human().name);
  print(Human().hand);

  //creating new object as INSTANCE for  Human class
  fromEarth.eyesCount = 2;
  print(fromEarth.eyesCount);
}
