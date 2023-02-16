import 'dart:io';

  void menu() {
  int? Role;
    print("Select Your Role : ");
    Role = int.parse(stdin.readLineSync()!);
    if (Role == 1) {
      manager();
    } else if (Role == 2) {
      customer();
    } else {
      print("sorry you not chosen right role");
    }
  }
  void manager(){
           print("*  Welcome To Market Manager  *");
           print("press 1 : Add fruit stock");
           print("press 2 : view fruit stock");
           print("press 3 : update fruit stock");
           print("which operation you want to perform");
           int operation = int.parse(stdin.readLineSync()!);
           if(operation == 1){
              Add_fruit_stock();
           }else if(operation == 2){
              view_fruit_stock();
           }else if(operation == 3){
              update_fruit_stock();
           }else{
              print("Exit..");
           }
  }
    void Add_fruit_stock(){
         print("ADD FRUIT STOCK\n");
         print("Enter fruit Name :");
         String fruit_name=stdin.readLineSync()!;
       print("Enter qty (in kg) :");
         int qty = int.parse(stdin.readLineSync()!);
        print("Enter price :");
        int price = int.parse(stdin.readLineSync()!);
      
    }
    void view_fruit_stock(){
      String? fruit_name;
      int? qty,price; 
      print("'fruit_name' : '$fruit_name' : {'qty' :'$qty' ,'Price' : $price}");
      
        }
    void update_fruit_stock(){
      print("No update hear..");
    }
    void customer(){
      print("No Update right now...");
    }
    void More_option() {
    bool status = true;
    String? choices;
    while (status) {
      print(
          "do you want to perform more operation :  press y for yes and n for no:");
      choices = stdin.readLineSync()!;
      if (choices == 'y') {
        main();
      } else {
        customer();
        break;
      }
    }
  }

 void main(){
    String? fruit_name;
    int? qty,price;

    print("*****  WELCOME TO FRUIT MARKET  *****");
    print("**  1> MANAGER");
    print("**  2> CUSTMER");
    menu();
    More_option();
}
