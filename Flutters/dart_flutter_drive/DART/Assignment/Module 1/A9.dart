//write a program to show of two no's without using third variable.

import 'dart:io';

void main(){
  int i,j;
  print("Enter number..");
  i=int.parse(stdin.readLineSync()!);
  print("Enter number..");
  j=int.parse(stdin.readLineSync()!);

  i=i+j;
  j=i-j;
  i=i-j;
  print("Swap number=$i,$j");
}