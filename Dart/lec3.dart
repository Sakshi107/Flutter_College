//function

//void and no return type difference
performTask(List l, Function func) {
  for (var i in l) {
    var v = func(i);
    print('input $i output $v');
  }
}

void main() {
  performTask([1, 2, 3, 4], (n) => (n * n));
}

