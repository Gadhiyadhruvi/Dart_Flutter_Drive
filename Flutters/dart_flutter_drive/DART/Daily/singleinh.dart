import 'dart:io';
class A{
  void displayA(){
    print("A class display..");
  }
}

class B extends A{
  void displayB(){
    print("B class display..");
  }
}
void main(){
var obj = new B();
obj.displayA();
obj.displayB();
}