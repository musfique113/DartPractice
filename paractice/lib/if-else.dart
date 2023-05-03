void main() {
  
  // Basic if-else statement
  int a = 10;
  if (a > 5) {
    print("a is greater than 5");
  } else {
    print("a is less than or equal to 5");
  }
  
  // If-else ladder statement
  int b = 7;
  if (b < 5) {
    print("b is less than 5");
  } else if (b >= 5 && b < 10) {
    print("b is between 5 and 10");
  } else {
    print("b is greater than or equal to 10");
  }
  
  // Nested if-else statement
  int c = 12;
  if (c > 10) {
    if (c < 20) {
      print("c is between 10 and 20");
    } else {
      print("c is greater than or equal to 20");
    }
  } else {
    print("c is less than or equal to 10");
  }
  
  // Ternary operator
  int d = 8;
  String result = d > 5 ? "d is greater than 5" : "d is less than or equal to 5";
  print(result);
  
  // Switch statement
  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("The fruit is an apple");
      break;
    case "banana":
      print("The fruit is a banana");
      break;
    default:
      print("The fruit is not an apple or a banana");
      break;
  }
}
