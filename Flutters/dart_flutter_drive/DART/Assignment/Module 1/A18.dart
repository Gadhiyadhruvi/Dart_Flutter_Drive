/*
   18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be
   Menu Driven)
   */

   import 'dart:io';
   void main(){
    double num1,num2,ans;
    int out;
    do{
      print("enter number1..");
      num1=double.parse(stdin.readLineSync()!);
      print("Enter number2..");
      num2=double.parse(stdin.readLineSync()!);

      print("---------- Main Menu ----------");
      print("\n 1) Addition \n 2) Substriction  \n 3) Multiplication  \n 4) Division  \n 5) Exit");
      print("\n Enter your chice..");
      out=int.parse(stdin.readLineSync()!);
      switch (out){
        case 1:
             ans=num1+num2;
             print("The addition number is = $ans");
             break;
        case 2:
             ans=num1-num2;
             print("The substriction number is = $ans");
             break;
        case 3:
             ans=num1*num2;
             print("The multiplication number is = $ans");
             break;
        case 4:
             ans=num1/num2;
             print("The division number is = $ans");
             break;
        default: // error messege for wrong chice
             print("Wrong chice..");
             break;
             
      }
    }while(out != 5);
   }
   