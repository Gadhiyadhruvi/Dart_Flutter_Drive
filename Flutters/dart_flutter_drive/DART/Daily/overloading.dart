
import 'dart:io';
class A{
    void display(){
        print("hello");
    }
    int display(int num){
        return 10;
    }
}
void main(){
  var obj = A();
  obj.display();
}