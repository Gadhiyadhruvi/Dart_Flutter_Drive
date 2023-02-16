// 19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must
// Be Menu Driven) 
import 'dart:io';
void main(){
  another();
  fun();
}
void another(){
  int num;
  print("Entet case number...");
  num=int.parse(stdin.readLineSync()!);

  switch(num){

    case 1:
      int base,height;
      double area;
      print("Enter base number...");
      base=int.parse(stdin.readLineSync()!);
      print("Enter height number...");
      height=int.parse(stdin.readLineSync()!);

      area=(base*height)/2;
      print("Area of triangle=$area");
      break;

    case 2:
       int r;
       double p = 3.14, circle;
       print("enter value r");
       r = int.parse(stdin.readLineSync()!);

       circle = 2 * p * r;
       print("circle=$circle");
       break;

    case 3:
       int width, height, Ans;
       print("\nEnter value of width  : ");
       width = int.parse(stdin.readLineSync()!);
       print("\nEnter value of height  : ");
       height = int.parse(stdin.readLineSync()!);

       Ans = width * height;
       print("Area of Rectangle : $Ans");
  }
}



void fun(){
  bool status=true;
  String? choice;
  while (status){
    print("Do you want to continue more operation press Y for yes and press N for no:-");
    choice=stdin.readLineSync()!;
    if(choice=='y'){
      another();
    }else{
      status=false;
      break;
    }
  }
}