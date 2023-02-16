// 5. write a program to find area of tringle.

import 'dart:io';
void main(){
  int base,height;
  double area;

  print("Enter base number...");
  base=int.parse(stdin.readLineSync()!);
  print("Enter height number...");
  height=int.parse(stdin.readLineSync()!);

  area=(base*height)/2;
  print("Area of triangle=$area");
}
    
