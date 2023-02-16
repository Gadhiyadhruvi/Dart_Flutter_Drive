import 'dart:io';

    class A{
        void display(){
            print("Hello class A..");
        }
    }
    class B extends A{
        void display(){
            super.display();
            print("Hello class B..");
        }
    }

    void main(){
        var obj=new B();
        obj.display();
    }
