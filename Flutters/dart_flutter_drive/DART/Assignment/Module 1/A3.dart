// 3.write a program to make a square and cube of number.

import 'dart:io';
void main(){
	int num,squre,cube;
  print("Enter number..");
  num=int.parse(stdin.readLineSync()!);

  squre=num*num;
  cube=num*num*num;
  print("squre=$squre");
  print("cube=$cube");
}