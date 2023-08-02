import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/resetpassword_controller.dart';
import 'package:foodapp/screen/signup_screen.dart';
import 'package:get/get.dart';

class ResetPassWordScreen extends GetView<ResetPassWordController> {
  static String pageId = '/screenResetPassWord';
  ResetPassWordScreen({Key? key}) : super(key: key);

  final controller = Get.put(ResetPassWordController());
  // final controllerr = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 80,left: 30,),
          child: Column(
            children: [
              Container(
                  width: 300,
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  child: Image.network("https://tse1.mm.bing.net/th?id=OIP.mmqGuCtPcQDj1lnnXNYPJAHaHL&pid=Api&P=0",
                    fit: BoxFit.fill,
                  )),
              const Text("Reset Your Password",style: TextStyle(fontSize: 20),),
              SizedBox(height: MediaQuery.of(context).size.height*0.001,),
              const Text("At least 8 characters including uppercase and lowercase letters ",style: TextStyle(fontSize: 18,color: Colors.grey),),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.83,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Obx(() => TextFormField(
                    obscureText: true,
                    // controller: controller.passwordcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(
                            controller.obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            controller.toggle;
                          }
                      ),
                      icon: const Icon(
                        Icons.lock,size: 28,
                        color: Colors.grey,
                      ),
                      labelStyle:
                      const TextStyle(color: Colors.grey,),
                      hintText: "PassWord",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.83,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Obx(() => TextFormField(
                    obscureText: true,
                    // controller: controller.passwordcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(
                            controller.obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            controller.toggle;
                          }
                      ),
                      icon: const Icon(
                        Icons.lock,size: 28,
                        color: Colors.grey,
                      ),
                      labelStyle:
                      const TextStyle(color: Colors.grey,),
                      hintText: "PassWord",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.83,
                      margin: const EdgeInsets.only(top: 20,bottom: 20),
                      child: const Text("UPDATE",style: TextStyle(color: Colors.white,fontSize: 18),))),
            ],
          ),
        ),
      )
    );
  }
}
