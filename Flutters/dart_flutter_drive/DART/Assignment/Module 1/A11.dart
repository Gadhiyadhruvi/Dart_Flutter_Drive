// write a program to given year is leap year or not.

import 'dart:io';

void main(){
  double year;
  print("Enter year..");
  year=double.parse(stdin.readLineSync()!);
{
  if(year%4==0){
    print("Enter a leap year..");
  }else{
    print("Enter a not leap year..");
  }
}
}
