import 'dart:io';

class student{
  // static method : which is contain only static number 
  // there is no need to create object we can access directly using of class name

  static void display(){
    print("This is static method..");
  }
}
void main(){
student.display();
}