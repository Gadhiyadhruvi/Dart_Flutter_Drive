import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'payment_menthod_bottomsheet.dart';

class AccountInformationBottomSheet extends GetView {
  int index;
  AccountInformationBottomSheet({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.back();
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller){
          return index == 0 ? GestureDetector(onTap: (){Get.back();},child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 150),
                      height: MediaQuery.of(context).size.height*0.01,
                      width: MediaQuery.of(context).size.width*0.13,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20))
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80,top: 10,bottom: 5),
                    child: const Text("Account information",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                  ),
                  const Divider(),
                  const Text("Full Name"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  const Text("Email Address"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  const Text("Phone Number"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.13,),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                          height: MediaQuery.of(context).size.height*0.06,
                          child: const Text("Send Again",style: TextStyle(color: Colors.white,fontSize: 18),))),
                ],
              ),
            ),
          ),) :  index == 1 ? Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 150),
                      height: MediaQuery.of(context).size.height*0.01,
                      width: MediaQuery.of(context).size.width*0.13,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20))
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80,top: 10,bottom: 5),
                    child: const Text("Change Password",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                  ),
                  const Divider(),
                  const Text("Password"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey,),
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  const Text("New Password"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey,),
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  const Text("Confirm Password"),
                  TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey,),
                      fillColor: Colors.grey[300],
                      labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                      contentPadding: const EdgeInsets.only(
                          left: 24.0, bottom: 18.0, top: 18.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.13,),
                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                          height: MediaQuery.of(context).size.height*0.06,
                          child: const Text("Send Again",style: TextStyle(color: Colors.white,fontSize: 18),))),
                ],
              ),
            ),
          ) :  index == 2 ? GestureDetector(onTap: (){Get.back();},child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.01,
                      width: MediaQuery.of(context).size.width*0.13,
                      decoration: BoxDecoration(color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20))
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 0,top: 10,bottom: 5),
                    child: const Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                  ),
                  const Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.15,
                    decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Image(image: AssetImage("assets/fb.png"),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Text("Don't have any card",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  const Text("It looks like you don't have a credit or debit card yet.Please add your cards."),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            elevation: 0,
                            builder: (context){
                              return PaymentMethodBottomSheet();
                            }
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                          height: MediaQuery.of(context).size.height*0.06,
                          child: const Text("Add Cards",style: TextStyle(color: Colors.white,fontSize: 18),))),
                  SizedBox(height: MediaQuery.of(context).size.height*0.23,),
                ],
              ),
            ),
          ),) :  Container();
        },
      ),
    );
  }
}