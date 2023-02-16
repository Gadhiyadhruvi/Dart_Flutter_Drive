// 6.write a program to find the simple interest.

import 'dart:io';
void main(){
	int p,r,n;
  double ans;

  print("Enter value of p..");
  p=int.parse(stdin.readLineSync()!);
  print("Enter value of r..");
  r=int.parse(stdin.readLineSync()!);
  print("Enter value of n..");
  n=int.parse(stdin.readLineSync()!);

  ans=p*r*n/100;
  print("ans=$ans");
}