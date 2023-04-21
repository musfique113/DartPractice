/*Create a map (key value pair) of an employee, the keys will be employee = [Id, Name, Age, Salary, Gender].
In this map [Id, Age, Salary] only these three keys' values will be in number.
At last print out the Salary from the map.*/
void main() {
  Map<dynamic, dynamic> employee = {
    "Id": 1,
    "Name": "Rafat",
    "Age": 30,
    "Salary": 45000,
    "Gender": "Male"
  };
  var salary = employee['Salary'];
  print('Salary is $salary');
}
