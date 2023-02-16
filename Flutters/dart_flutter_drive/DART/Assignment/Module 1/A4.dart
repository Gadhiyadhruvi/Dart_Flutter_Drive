// 4. write a program in find the area of circle.

import 'dart:io';
void main(){
	double radius,area;
  print("Enter value radius");
  radius=double.parse(stdin.readLineSync()!);

  area=3.14*radius*radius;
  print("area=$area");
}