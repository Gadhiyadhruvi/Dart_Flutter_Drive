import 'dart:math';
import 'dart:io';

void main(){
  Random random = new Random();

  int computer = random.nextInt(101);

  bool status = true;
  int user;
  while (status){
    print("Enter number : --");
    user = int.parse(stdin.readLineSync()!);

    if(user > computer){
      print("HINT : Guess lower number..");
    }else if(user < computer){
      print("HINT : Guess higher number..");
    }else{
      print("You got it !!!");
      status = false;
    }
  }
}