// class Parent{  
//   void display1(){print("parent");}  
// }  
// class Subclass extends Parent{  
//   void display2(){print("childclass");}  
// }  

// main(){
//   Subclass obj=new Subclass();
//   obj.display1();
//   obj.display2();
// }



abstract class parent{
  void display();
  void doSomething(){
    print('hello');
  }
}

class subclass1 extends parent{
  display(){
    print('subclass1');
  }
}