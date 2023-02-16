import 'dart:io';

void main(){
    String s1;
    String s2;

    print("Enter s1 :--");
    s1=int.parse(stdin.readLineSync()!);
    print("Enter s2 :--");
    s2=int.parse(stdin.readLineSync()!);

    if(s1.endsWith("@gmail.com")){
        print("valid email.....");

    }else{
        print("not valid email.....");
    }
    
}