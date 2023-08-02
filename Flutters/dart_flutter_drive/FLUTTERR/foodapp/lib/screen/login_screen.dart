import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/login_controller.dart';
import 'package:foodapp/screen/signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  static String pageId = '/screenLogin';
  LoginScreen({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                Container(
                    width: MediaQuery.of(context).size.height*0.25,
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Image.asset("assets/cook.png",
                      fit: BoxFit.fill,
                    )),
                const Text("WelCome Back",style: TextStyle(fontSize: 30,color: Colors.black),),
                const Text("Hello Jos Sign in to continue!",style: TextStyle(fontSize: 20,color: Colors.black38),),
                const Text("Create New Account",style: TextStyle(fontSize: 20,color: Colors.orangeAccent),),
                Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.83,
                  margin: const EdgeInsets.only(bottom: 15,top: 15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      // controller: controller.emailcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,size: 25,
                          color: Colors.grey,
                        ),
                        labelStyle:
                        TextStyle(color: Colors.grey,),
                        hintText: "Username or Email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
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
                        child: const Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 18),))),
                GestureDetector(
                      onTap: () {
                      },
                      child: const Text("Forgot Password?",style: TextStyle(color: Colors.orangeAccent,fontSize: 15),)),
                const Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("------------------------------"),
                    Text("or",style: TextStyle(fontSize: 22),),
                    Text("------------------------------"),
                  ],
                ),),
                SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width*0.8,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 50,left: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[200]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage('assets/fb.png',)),
                      Text("Connect with Facebook")
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width*0.8,
                  padding: const EdgeInsets.only(right: 50,left: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[200]),
                  child: const Row(
                    children: [
                      Image(image: AssetImage('assets/google.png',),height: 50,),
                      Text("Connect with Google")
                    ],
                  ),
                ),
              ]),
        )
      ),
    );
  }
}



