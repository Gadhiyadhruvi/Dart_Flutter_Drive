// 20. Looping Programs 
//     j. Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5)

import 'dart:io';
void main(){
  
  double n,first,last,sum;
  print("Enter number of n..");
  n=double.parse(stdin.readLineSync()!);
   
  first=n%10;
  while(n>9){
    n= n/10;
  }
  sum=first+last;
  print("sum=$sum");
}