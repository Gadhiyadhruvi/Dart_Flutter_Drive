import 'dart:io';
class sample{
  late int num1,num2,ans;
  void input(){
    print("Enter number1..");
    num1=int.parse(stdin.readLineSync()!);
    print("Enetr number2..");
    num2=int.parse(stdin.readLineSync()!);

  }
  void addition(){
    ans=num1+num2;
    print("ans=$ans");
  }
   void substriction(){
    ans=num1-num2;
    print("ans=$ans");
  }
   void multiplication(){
    ans=num1*num2;
    print("ans=$ans");
  }
   void divition(){
   double ans=num1/num2;
    print("ans=$ans");
  }
}
void main(){
var obj=new sample();
obj.input();
obj.addition();
obj.substriction();
obj.multiplication();
obj.divition();
}