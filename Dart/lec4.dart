
void main() {
  String m = "Flutter uses Dart";
  //Define Closure
  Function showMessage = () {
    m = "Value of m is changed";
    print(m);
  };
  showMessage();
//Define Closure
  Function talk = () {
    String msg = "Hello world!!";
    Function say = () {
      msg = "Value is changed here as well!!";
      print(msg);
    };
    return say;
  };
  var speak = talk();
  speak();
}
