import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginwithapigetx/get/controller/signup_controller.dart';

import 'login_screen.dart';

class SignUpScreen extends GetView {
  SignUpScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.isLoading.value ? const Center(child: CircularProgressIndicator(),)
          : SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 22),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.network(
                    "https://tse4.mm.bing.net/th?id=OIP.5_B7u5am3AqFKLfOWMNwbQHaFj&pid=Api&P=0",
                  )),
              const Text(
                "Let's Get Started",
                style:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.83,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const Border(
                        right: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.emailcontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: "Enter E-Mail",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.83,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const Border(
                        right: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: TextFormField(
                    obscureText: true,
                    controller: controller.passwordcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.obscureText.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: controller.toggle,
                      ),
                      icon: const Icon(
                        Icons.lock,
                        size: 28,
                        color: Colors.grey,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: "PassWord",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => LoginScreen());
                    if (controller.emailcontroller.text.isNotEmpty &&
                        controller.passwordcontroller.text.isNotEmpty ) {
                        controller.isLoading.value = true;
                        controller.Sign_Up(
                            controller.emailcontroller.text,
                            controller.passwordcontroller.text,
                            context);
                    }
                  },
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.blue),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already sign up"),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => LoginScreen(),
                        //     ));
                      },
                      child: const Text("Login"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}