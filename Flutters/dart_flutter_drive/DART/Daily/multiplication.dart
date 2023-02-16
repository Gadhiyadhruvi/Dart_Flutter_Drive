import 'dart:io';
 void main(){
  int num1,num2,ans;
  print("Enter number1..");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter number2..");
  num2=int.parse(stdin.readLineSync()!);

  ans=num1*num2;
  print("ans=$ans");
 }