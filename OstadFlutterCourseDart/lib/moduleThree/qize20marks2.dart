class MyClass {
  int myVar;
  MyClass(this.myVar);
  void printVar() {
    print(this.myVar);
  }
}

void main() {
  MyClass object = MyClass(42);
  object.printVar();
}
