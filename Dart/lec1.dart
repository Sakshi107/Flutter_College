import 'dart:io';
main() {
  stdout.writeln("Enter name:");
  String name= stdin.readLineSync();
  print('Entered name is $name');
}