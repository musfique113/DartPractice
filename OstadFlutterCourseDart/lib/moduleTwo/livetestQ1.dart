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
  List<int> numbers = [22, 21, 98, 770,14,999,236,74,0236,39,41,110,111];
  List<int> oddNumbers = getOddNumbers(numbers);
  print(oddNumbers);
}


