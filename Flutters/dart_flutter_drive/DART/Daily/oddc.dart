import 'dart:io';

class sample{
  late int num;
  void input(){
    print("Enter number..");
    num=int.parse(stdin.readLineSync()!);

  }

  void display(){
    if(num%2==0){
      print("Even number");
    }else{
      print("Odd number");
    }
  }
}

void main(){
  var obj=new sample();
  obj.input();
  obj.display();
}