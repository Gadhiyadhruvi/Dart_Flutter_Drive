import 'dart:io';
void main(){

  int i,num;
  for(i=1;i<=5;i++);
  {
    print("Enter number..");
    num=int.parse(stdin.readLineSync()!);
    if(num%2==0){
      print("Even number..");
    }else{
      print("Odd number..");
    }
  }
}