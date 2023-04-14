import 'dart:io';

void main() {
  print("Enter any intiger01:");
  var xTa = int.parse(stdin.readLineSync()!);
  print("Enter any intiger02");
  var xOa = int.parse(stdin.readLineSync()!);
  print(xTa);
  print(xOa);
  print("The sum of $xOa and $xTa is ${xOa + xTa}");
}
