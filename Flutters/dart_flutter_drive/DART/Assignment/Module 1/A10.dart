// write a program to check the given number is positive or nagative.

import 'dart:io';

void main(){
  int num1;
  print("Enter value..");
  num1=int.parse(stdin.readLineSync()!);

  if(num1>0){
    print("Number is positive");
  }else if(num1<0){
    print("Number is nagative");
  }else{
    print("Number is zero");
  }
}