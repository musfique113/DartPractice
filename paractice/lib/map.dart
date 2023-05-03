void main() {
  // Create a map of string keys and integer values
  Map<String, int> myMap = {
    'apple': 3,
    'banana': 5,
    'orange': 2,
  };
  
  // Accessing values by keys
  print(myMap['apple']); // Output: 3
  print(myMap['banana']); // Output: 5
  
  // Adding a new key-value pair
  myMap['kiwi'] = 4;
  print(myMap); // Output: {apple: 3, banana: 5, orange: 2, kiwi: 4}
  
  // Removing a key-value pair
  myMap.remove('orange');
  print(myMap); // Output: {apple: 3, banana: 5, kiwi: 4}
  
  // Iterating through the map
  myMap.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
  // Output:
  // Key: apple, Value: 3
  // Key: banana, Value: 5
  // Key: kiwi, Value: 4
}
