import 'dart:io';
void main(){
  bool status=true;
  String? choice;
  int? num;
  while (status){
    print("Enter Number..");
    num=int.parse(stdin.readLineSync()!);
    print("Do you want to continue press Y for yes and press N for no:-");
    choice=stdin.readLineSync()!;
    if(choice=='y'){
      status=true;
    }else{
      status=false;
    }
  }
  }
