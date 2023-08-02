import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/phonenumber_controller.dart';
import 'package:foodapp/screen/otp_screen.dart';
import 'package:get/get.dart';

class PhoneNumberScreen extends GetView {
  static String pageId = '/screenPhoneNumber';
  PhoneNumberScreen({Key? key}) : super(key: key);

  final controller = Get.put(PhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.height*0.25,
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Image.asset("assets/cook.png",
                      fit: BoxFit.fill,
                    )),
                const Text("Get Started with Cook",style: TextStyle(fontSize: 20),),
                SizedBox(height: MediaQuery.of(context).size.height*0.001,),
                const Text("Enter your phone number",style: TextStyle(fontSize: 18,color: Colors.grey),),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Container(
                  height: MediaQuery.of(context).size.height*0.17,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Phone Number",style: TextStyle(color: Colors.grey[500]),),
                        const SizedBox(height: 5,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.check_circle,color: Colors.grey,),
                            prefixIcon: Icon(
                              Icons.phone,size: 25,
                              color: Colors.grey,
                            ),
                            labelStyle:
                            TextStyle(color: Colors.grey,),
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                GestureDetector(
                    onTap: () {
                      Get.to(() => OTPScreen());
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent),
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.83,
                        margin: const EdgeInsets.only(top: 20,bottom: 20),
                        child: const Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 18),))),
              ],
            )),
      ),
    );
  }
}