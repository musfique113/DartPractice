void main() {
  // Arithmetic operators
  int a = 10;
  int b = 3;
  print('Arithmetic Operators');
  print('Addition: ${a + b}');       // Addition
  print('Subtraction: ${a - b}');    // Subtraction
  print('Multiplication: ${a * b}'); // Multiplication
  print('Division: ${a / b}');       // Division
  print('Modulus: ${a % b}');        // Modulus
  print('Unary Minus: ${-a}');       // Unary minus
  
  // Assignment operators
  int c = 5;
  print('\nAssignment Operators');
  c += 2; // c = c + 2
  print('c += 2: $c'); // Addition and assignment
  c -= 3; // c = c - 3
  print('c -= 3: $c'); // Subtraction and assignment
  c *= 4; // c = c * 4
  print('c *= 4: $c'); // Multiplication and assignment
  c ~/= 2; // c = c ~/ 2 (integer division)
  print('c ~/= 2: $c'); // Integer division and assignment
  c %= 3; // c = c % 3
  print('c %= 3: $c'); // Modulus and assignment
  
  // Relational operators
  int d = 5;
  print('\nRelational Operators');
  print('$a > $b: ${a > b}');   // Greater than
  print('$a < $b: ${a < b}');   // Less than
  print('$a >= $d: ${a >= d}'); // Greater than or equal to
  print('$a <= $d: ${a <= d}'); // Less than or equal to
  print('$a == $d: ${a == d}'); // Equal to
  print('$a != $d: ${a != d}'); // Not equal to
  
  // Logical operators
  bool e = true;
  bool f = false;
  print('\nLogical Operators');
  print('$e && $f: ${e && f}'); // Logical AND
  print('$e || $f: ${e || f}'); // Logical OR
  print('!$e: ${!e}');          // Logical NOT
  
  // // Bitwise operators
  // int g = 0b1010;
  // int h = 0b0101;
  // print('\nBitwise Operators');
  // print('$g & $h: ${g & h}'); // Bitwise AND
  // print('$g | $h: ${g | h}'); // Bitwise OR
  // print('$g ^ $h: ${g ^ h}'); // Bitwise XOR
  // print('~$g: ${~g}');        // Bitwise NOT
  // print('$g << 2: ${g << 2}'); // Left shift by 2 bits
  // print('$g >> 2: ${g >> 2}'); // Right shift by 2 bits
  
  // Conditional operator
  int i = 10;
  int j = 5;
  print('\nConditional Operator');
  int max = i > j ? i : j;
  print('Max between $i and $j is $max');
}
