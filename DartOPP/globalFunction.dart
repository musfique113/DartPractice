class Addition {
  //this is a global function / method
  static addTwoNumber(var b, var c) {
    var a = b + c;
    print(a);
  }
}

void main() {
  //accessing the function from Addition Class without creation instance
  Addition.addTwoNumber(3, 70);
}
