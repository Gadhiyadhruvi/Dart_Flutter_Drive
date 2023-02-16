// 20. Looping Programs 
//     f.write a program you have to print the table of given number.

import 'dart:io';

void main() {
  table();
}

void table() {
  print("Enter table number");
  int N = int.parse(stdin.readLineSync()!);
  print("Your table is : \n ");
  for (int i = 1; i <= 10; i++) {
    int ans = N * i;
    print("$N * $i = $ans");
  }
}
