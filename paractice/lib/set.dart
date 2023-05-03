void main() {
  // Create a set of integers
  Set<int> mySet = {2, 4, 6, 8, 10};
  print(mySet); // Output: {2, 4, 6, 8, 10}
  
  // Add a new value to the set
  mySet.add(12);
  print(mySet); // Output: {2, 4, 6, 8, 10, 12}
  
  // Remove a value from the set
  mySet.remove(8);
  print(mySet); // Output: {2, 4, 6, 10, 12}
  
  // Check if the set contains a value
  print(mySet.contains(6)); // Output: true
  print(mySet.contains(8)); // Output: false
  
  // Iterate through the set
  mySet.forEach((element) {
    print(element);
  });
  // Output:
  // 2
  // 4
  // 6
  // 10
  // 12
}

