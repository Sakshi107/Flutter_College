void main() {
  List<int> val = List();
  val.add(67);
  val.add(678);
  val.add(-12);
  val.add(1278);
  val.add(24);
  val.add(0);

  print('list is:$val');
  // for (int ele in val) {
  //   print(ele);
  // }

  var largestVal = val[0];

  for (var i = 0; i < val.length; i++) {
    if (val[i] > largestVal) 
      largestVal = val[i];
  }

  print("Largest value present in given list is : $largestVal");
}
