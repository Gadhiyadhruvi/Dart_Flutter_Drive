import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/otp_controller.dart';
import 'package:foodapp/screen/bottomnav_screen.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends GetView<OTPController> {
  static String pageId = '/screenOTP';
  OTPScreen({Key? key}) : super(key: key);

  final controller = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 80,left: 35,),
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
              Pinput(
                focusNode: controller.focusNode,
                controller: controller.pinController,
                androidSmsAutofillMethod:
                AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                length: 4,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                cursor: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 9),
                      width: 22,
                      height: 1,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              GestureDetector(
                  onTap: () {
                    Get.to(() => BottomNavScreen());
                  },
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.83,
                      margin: const EdgeInsets.only(top: 20,bottom: 20),
                      child: const Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 18),))),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.83,
                      margin: const EdgeInsets.only(top: 20,bottom: 20),
                      child: const Text("Send Again",style: TextStyle(color: Colors.black,fontSize: 18),))),
            ],
          )),
    );
  }
}
