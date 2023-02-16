import 'dart:io';
void main(){
    String? name,gender,item,choice;
    int? age,gram,total_price,price,k22=4181,charge=580,charges; 
    bool status=true;
    double des,netamount;
    print("Enter your Name..");
    name=stdin.readLineSync()!;
    print("Enter your gender..");
    gender=stdin.readLineSync()!;
    print("Enter your age..");
    age=int.parse(stdin.readLineSync()!);
    print("Enter Gold item..");
    item=stdin.readLineSync()!;
    print("Enter purchase Gold how many gram.. ");
    gram=int.parse(stdin.readLineSync()!);
    print("Gold price 1 gram(22k) : 4181");
    price=gram*k22;
    print("Gold Price = $price");
    print("Making charge = 580");
    charges=gram*charge;
    print("Total charges = $charges");
    total_price=price+charges;
    print("Total Amount = $total_price");
    if(gender == 'male'){
        if(age > 65){
          if(total_price > 100000 && total_price < 200000){
            print("Discount = 10%");
            des=(total_price * 10)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }else if(total_price > 200000 && total_price < 300000){
            print("Discount = 20");
            des=(total_price * 20)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }else{
            print("Discount = 30");
            des=(total_price * 30)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }
        }else{
          if(total_price > 100000 && total_price < 200000){
            print("Discount = 5%");
            des=(total_price * 5)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }else if(total_price > 200000 && total_price < 300000){
            print("Discount = 15");
            des=(total_price * 15)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }else{
            print("Discount = 25");
            des=(total_price * 25)/100;
            print("DISCOUNT = $des");
            netamount=total_price-des;
            print("NETAMOUNT = $netamount");
          }
        }
    }else{
      if(age > 65){
       if(total_price > 100000 && total_price < 200000){
        print("Discount = 15%");
        des=(total_price * 15)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
      }else if(total_price > 200000 && total_price < 300000){
        print("Discount = 25%");
        des=(total_price * 25)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
       }else{
        print("Discount = 38%");
        des=(total_price * 38)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
       }
    }else{
      if(total_price > 100000 && total_price < 200000){
        print("Discount = 10%");
        des=(total_price * 10)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
      }else if(total_price > 200000 && total_price < 300000){
        print("Discount = 20%");
        des=(total_price * 20)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
      }else{
        print("Discount = 35%");
        des=(total_price * 35)/100;
        print("DISCOUNT = $des");
        netamount=total_price-des;
        print("NETAMOUNT = $netamount");
      }
    }
        print(" --------------------------------------------------");
        print(" ******  INVOICE  ***** ");
        print("NAME = $name");
        print("GENDER = $gender");
        print("AGE = $age");
        print("GOLD ITEM = $item");
        print("GOLD QTY(GRAM) = $gram");
        print("GOLD PRICE = $price");
        print("TOTAL MAKING CHARGES = $charges");
        print("TOTAL AMOUND = $total_price");
        print(" --------------------------------------------------");
        print("DISCOUNT = $des");
        print("NETAMOUNT = $netamount");
      
    }
    while (status){
            print("Do you want to continue press Y for yes and press N for no:-");
            choice=stdin.readLineSync()!;
                  if(choice=='y'){
                        main();
                  }else{
                          status=false;
                  }
      }
    }
