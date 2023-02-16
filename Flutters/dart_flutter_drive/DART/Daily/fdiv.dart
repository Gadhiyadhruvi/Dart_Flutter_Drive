import 'dart:io';
void main(){
  int n1,n2;

  print("Enter number..");
  n1=int.parse(stdin.readLineSync()!);
  print("Enter number..");
  n2=int.parse(stdin.readLineSync()!);
  division(n1,n2);
  
}
void division(int num1,int num2){
  double ans;
  ans=(num1/num2);
  print("ans=$ans");
}