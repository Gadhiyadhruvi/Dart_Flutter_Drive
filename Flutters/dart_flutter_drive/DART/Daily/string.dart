import 'dart:io';
void main(){
    String? s1;
    String? s2;
    print("Enter string 1..");
    s1=stdin.readLineSync()!;
    print("Enter string 2..");
    s2=stdin.readLineSync()!;

    print("String 1 :" + s1.toUpperCase());
    print("String 2 :" + s2.toLowerCase());
}