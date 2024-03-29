// ?: Write a program to greet the user with their name.
// *: learn about comments, imports, input, output in dart.

// *: comments
// single line comment
/*  multi
    line
    comment */
/// documentation comment, dartdoc treats these comments specially

// *: imports
// int? a; // allows null values, removing '?' forces non-nullable

import 'dart:io';
void main() {
    stdout.write("Name: ");
    String? name = stdin.readLineSync();

    stdout.write("Age: ");
    String? age = stdin.readLineSync();
    //int? age = int.tryParse(ageString!);

    stdout.write("Dept: ");
    String? dept = stdin.readLineSync();

    stdout.write("You are $name , $age years old from $dept depertment.\n");

}