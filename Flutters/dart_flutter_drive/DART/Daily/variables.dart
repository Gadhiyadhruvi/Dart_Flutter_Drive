import 'dart:io';

class student{
  int? num1=10; // instance variale - it can only access with object..

  static int num3=20;
  void display(){
    int? num2=30; // local variable - inside the method..
    print("num2=$num2");
  }
}
void main(){
var obj=new student();

// accessing local variable
obj.display();

// accessing instance variable
print("num1=${obj.num1}");

// static variable : no need to use object here, only class name required
print("static variable: ${student.num3}");
}