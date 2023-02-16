import 'dart:io';
void main(){
  int num1,num2,ans;
  print("Enter value of num1");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter value of num2");
  num2=int.parse(stdin.readLineSync()!);
  ans=num1+num2;
  print("Ans=$ans");
}