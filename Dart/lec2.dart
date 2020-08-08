import 'dart:io';

void main() {
  //list
  print('----List----');
  List<int> val = List(6);

  stdout.writeln("Enter 6 numbers:");
  for (var i = 0; i < val.length; i++) {
    val[i] = (int.parse(stdin.readLineSync()));
  }
  print('list is:$val');

  var largestVal = val[0];

  for (var i = 0; i < val.length; i++) {
    if (val[i] > largestVal) largestVal = val[i];
  }

  print("Largest value present in given list is : $largestVal");

  //set
  print('----Set----');
  Set<int> val1 = Set();
  val1.add(12);
  val1.add(24);
  val1.add(67);
  val1.remove(12);
  val1.add(98);

  String set1 = '';
  val1.forEach((element) => {set1 = set1 + element.toString() + '  '});
  print(set1);
  val1.clear();
  print(val1);

  Set<String> fruits = Set.from(["orange", "kiwi", "apple", "banana"]);
  print('Empty :' + fruits.isEmpty.toString());
  print('Length of fruits:' + fruits.length.toString());
  print('Contains kiwi:' + fruits.contains("kiwi").toString());
  fruits.forEach((element) => print(element));

  //Map
  print('----Map----');

  var myMap = Map();
  print(myMap);
  myMap["id"] = "1";
  myMap["country"] = "India";
  myMap["cities"] = ["Mumbai","Delhi","Kolkata","Pune"];
  print(myMap);

}
