
void main() {
  // Create a set of integers
  Set<int> mySet = {1, 2, 3};
  
  // Add a single element to the set
  mySet.add(4);
  print(mySet); // Output: {1, 2, 3, 4}
  
  // Add multiple elements to the set
  mySet.addAll([5, 6, 7]);
  print(mySet); // Output: {1, 2, 3, 4, 5, 6, 7}
}
