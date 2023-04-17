/*Question: Take a list of phone numbers example
phoneNumber = [ +88, 01768131685, 01768171985, 01768111286, 01768131685]
And write program that prints out the full number like ‘+8801768171985’ 
You have to print out all numbers given in the list except +88. */

void main() {
  List<dynamic> phoneNumber = [
    "+88",
    "01768131685",
    "01768171985",
    "01768111286",
    "01768131685"
  ];

  dynamic output =
      '${phoneNumber[0]}${phoneNumber[1]},${phoneNumber[0]}${phoneNumber[2]},${phoneNumber[0]}${phoneNumber[3]},${phoneNumber[0]}${phoneNumber[4]}';
  print("Full numbers: $output");

  //print out all numbers given in the list except +88
  List<dynamic> subList = phoneNumber.sublist(1, 5);
  print("Numbers given in the list except (+88): $subList");

/* //another approches
  String one = phoneNumber[0] + phoneNumber[1];
  String two = phoneNumber[0] + phoneNumber[2];
  String three = phoneNumber[0] + phoneNumber[3];
  String four = phoneNumber[0] + phoneNumber[4];
  print("$one,$two,$three,$four");

  print(
      '${phoneNumber[0]}${phoneNumber[1]},${phoneNumber[0]}${phoneNumber[2]},${phoneNumber[0]}${phoneNumber[3]},${phoneNumber[0]}${phoneNumber[4]}');

  
  phoneNumber[0] = phoneNumber[0].toString();
  phoneNumber[1] = phoneNumber[1].toString();
  phoneNumber[2] = phoneNumber[2].toString();
  phoneNumber[3] = phoneNumber[3].toString();
  phoneNumber[4] = phoneNumber[4].toString();
 
 */

  
}
