import 'dart:io';
class RBI{
    void display(){
        print("Rate Of Intrest..");
    }
}
class SBI extends RBI{
    void display(){
        super.display();
        print("SBI Rules..");
    }
}
class HDFC extends RBI{
    void display(){
        super.display();
        print("HDFC Rules..");
    }
}

void main(){
    var obj = new SBI();
    var obj1= new HDFC();
    obj.display();
  
}