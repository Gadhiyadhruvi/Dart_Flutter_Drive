import 'dart:io';
void main(){
     print("*****  WELCOME TO TOPS QUIZ GAMING CHALLANGE  *****");
     print("**  1> MASTER");
     print("**  2> CRACKER");
      menu();
      More_option();
}
void menu() {
  int? Role;
    print("Select Your Role : ");
    Role = int.parse(stdin.readLineSync()!);
    if (Role == 1) {
      master();
    } else if (Role == 2) {
      cracker();
    } else {
      print("sorry you not chosen right role");
    }
  }
void master(){
           print("*  Welcome Master  *");
           print("Shake your brain and add some challening question..");
           print("press 1 : for add question");
           print("press 2 : for view question");
           print("press 3 : for delete question");
           print("press 4 : for exit");
           print("which operation you want to perform");
           int operation = int.parse(stdin.readLineSync()!);

           if(operation == 1){
              Add_question();
           }else if(operation == 2){
              View_question();
           }else if(operation == 3){
              Delete_question();
           }else{
              print("Exit Quiz..");
           }
}
    void Add_question(){
       question1();
       question2();
       question3();
       question4();
       question5();
       question6();
       question7();
       question8();
       question9();
       question10();
    }
    void question1(){
       print("Q 1 In which year did the Cabinet Mission arrived in India?"
                      "\n (A) 1942"
                      "\n (B) 1943"
                      "\n (C) 1945"
                      "\n (D) 1946");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'D'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = 1946");
    }
    void question2(){
       print("Q 2 Panchayati Raj comes under…."
                   "\n (A) Residual list"
                   "\n (B) Concurrent list"
                   "\n (C) State list"
                   "\n (D) Union list");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'C'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = State list");
    }
    void question3(){
       print("Q 3 Harshcharita and KadamBari are the works of….."
                     "\n (A) Kalhan"
                     "\n (B) Panini"
                     "\n (C) Bana Bhatta"
                     "\n (D) Patanjali");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'C'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = Bana Bhatta..");
    }
    void question4(){
       print("Q 4 When did the war of American Independence take place?"
                  "\n (A) 1770"
                  "\n (B) 1772"
                  "\n (C) 1774"
                  "\n (D) 1776");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'D'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = 1776");
    }
    void question5(){
       print("Q 5 The literacy rate of India is…."
                    "\n (A) 57.86%"
                    "\n (B) 61.34%"
                    "\n (C) 63.98%"
                    "\n (D) 65.38%");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'D'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
     print("Right Ans = 65.38%");
    }
    void question6(){
       print("Q 6  India's first mission to the moon was launched in which year?"
                    "\n (A) 1969"
                    "\n (B) 2005"
                    "\n (C) 2008"
                    "\n (D) 1998");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'C'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
     }
     print("Right Ans = 2008");
    }
    void question7(){
       print("Q 7  When was the battle of Haldighati fought?"
                    "\n (A) 1550"
                    "\n (B) 1576"
                    "\n (C) 1650"
                    "\n (D) 1701");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'B'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = 1576");
    }
    void question8(){
       print("Q 8  Who was adorned with the title of 'Jarikalam' by Emperor Akbar?"
                    "\n (A) Muhammad Khan"
                    "\n (B) Mir Syed Ali"
                    "\n (C) Abdusamad"
                    "\n (D) Mohammad Hussain");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'D'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans =  Mohammad Hussain");
    }
    void question9(){
       print("Q 9  Which Mughal ruler was called 'Alamgir'?"
                    "\n (A) Aurangzeb"
                    "\n (B) Jahangir"
                    "\n (C) Akbar"
                    "\n (D) Shah Jahan");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'A'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
    }
    print("Right Ans = Aurangzeb..");
    }
    void question10(){
       print("Q 10  Who among the following can remove the Governor from his office?"
                     "\n (A) Parliament"
                     "\n (B) State Legislative Assembly"
                     "\n (C) President"
                     "\n (D) none of these");

      String? option;
     print("Enter option..");
     option=stdin.readLineSync()!;
     if(option == 'C'){
      print("Your ans is right.");
     }else{
      print("your ans is wrong.");
     }
     print("Right Ans = President...");
    }
    void view(){
      print("Q 1 In which year did the Cabinet Mission arrived in India?"
                      "\n (A) 1942"
                      "\n (B) 1943"
                      "\n (C) 1945"
                      "\n (D) 1946");
      print("Q 2 Panchayati Raj comes under…."
                   "\n (A) Residual list"
                   "\n (B) Concurrent list"
                   "\n (C) State list"
                   "\n (D) Union list");
      print("Q 3 Harshcharita and KadamBari are the works of….."
                     "\n (A) Kalhan"
                     "\n (B) Panini"
                     "\n (C) Bana Bhatta"
                     "\n (D) Patanjali");
      print("Q 4 When did the war of American Independence take place?"
                  "\n (A) 1770"
                  "\n (B) 1772"
                  "\n (C) 1774"
                  "\n (D) 1776");
      print("Q 5 The literacy rate of India is…."
                    "\n (A) 57.86%"
                    "\n (B) 61.34%"
                    "\n (C) 63.98%"
                    "\n (D) 65.38%");
      print("Q 6  India's first mission to the moon was launched in which year?"
                    "\n (A) 1969"
                    "\n (B) 2005"
                    "\n (C) 2008"
                    "\n (D) 1998");
      print("Q 7  When was the battle of Haldighati fought?"
                    "\n (A) 1550"
                    "\n (B) 1576"
                    "\n (C) 1650"
                    "\n (D) 1701");
      print("Q 8  Who was adorned with the title of 'Jarikalam' by Emperor Akbar?"
                    "\n (A) Muhammad Khan"
                    "\n (B) Mir Syed Ali"
                    "\n (C) Abdusamad"
                    "\n (D) Mohammad Hussain");
      print("Q 9  Which Mughal ruler was called 'Alamgir'?"
                    "\n (A) Aurangzeb"
                    "\n (B) Jahangir"
                    "\n (C) Akbar"
                    "\n (D) Shah Jahan");

      print("Q 10  Who among the following can remove the Governor from his office?"
                     "\n (A) Parliament"
                     "\n (B) State Legislative Assembly"
                     "\n (C) President"
                     "\n (D) none of these");

    }
    void View_question(){
        view();
  
    }
    void Delete_question(){
      print("Delete question..");
    }
    void cracker(){
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
        cracker();
        break;
      }
    }
  }

     