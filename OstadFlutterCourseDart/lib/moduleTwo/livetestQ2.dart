import 'dart:io';
List<int> getOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      oddNumbers.add(numbers[i]);
    }
  }
  return oddNumbers;
}
void main() {
  // Take input from user
  print("Enter a list of integers, separated by commas:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map(int.parse).toList();
  List<int> oddNumbers = getOddNumbers(numbers);
  // Print both input and output lists
  print("Input list: $numbers");
  print("Output list: $oddNumbers");
}
