import 'oops.dart';
void main() {
  person p1 = person(26);

  print("Before Setter - ${p1.age}");
  //p1.age = 44; // cannot set
  print("After Setter - ${p1.age}"); //getter
}