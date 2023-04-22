void main() {
  // Example of a variable
  var myAge = 28;
  print('My age is $myAge.');

  // Example of a constant
  const pi = 3.14159;
  print('The value of pi is $pi.');

  // Example of using a variable in a calculation
  var myBirthYear = 1995;
  var currentYear = DateTime.now().year;
  var myAgeNow = currentYear - myBirthYear;
  print('I am $myAgeNow years old.');
}
