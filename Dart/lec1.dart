import 'dart:io';
// main() {
//   stdout.writeln("Enter name:");
//   String name= stdin.readLineSync();
//   print('Entered name is $name');
// }

main() {
  stdout.writeln("Enter 1st number:");
  String n1 = stdin.readLineSync();
  stdout.writeln("Enter 2nd number:");
  String n2 = stdin.readLineSync();
  print(int.parse(n1) + int.parse(n2));
}
