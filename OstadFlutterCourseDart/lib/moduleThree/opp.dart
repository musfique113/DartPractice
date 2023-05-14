class Animal {
  String direction = 'animal variable';

  Animal(this.direction);

  void moving(String direction) {
    print(direction);
    print(this.direction);
  }
}

void main() {
  Animal cat = Animal("Dat");
  cat.moving("left");
}
