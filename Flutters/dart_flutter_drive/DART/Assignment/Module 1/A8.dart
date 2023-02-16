// write a programe to calculate sum of 5 subject & find the persentage. Subject marks entered by user.

import 'dart:io';
void main(){
  int s1,s2,s3,s4,s5;
  double per;
  print("Enter mark of subject1..");
  s1=int.parse(stdin.readLineSync()!);
  print("Enter mark of subject2..");
  s2=int.parse(stdin.readLineSync()!);
  print("Enter mark of subject3..");
  s3=int.parse(stdin.readLineSync()!);
  print("Enter mark of subject4..");
  s4=int.parse(stdin.readLineSync()!);
  print("Enter mark of subject5..");
  s5=int.parse(stdin.readLineSync()!);

  per=(s1+s2+s3+s4+s5)*100/500;
  print("persentsge=$per");
}