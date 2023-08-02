import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginwithapigetx/get/controller/login_controller.dart';
import 'package:loginwithapigetx/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.isLoading.value ? const Center(child: CircularProgressIndicator(),) :
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
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
                  const Text("LOG IN",style: TextStyle(fontSize: 30,color: Colors.blue),),
                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.83,
                    margin: const EdgeInsets.only(bottom: 20,top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: controller.usercontroller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.local_phone_outlined,size: 25,
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
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.83,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: TextFormField(
                        obscureText: true,
                        controller: controller.numbercontroller,
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
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170,top: 20),
                    child: InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgate_Password(),));
                        },
                        child: const Text("Forgot Password",style: TextStyle(color: Colors.blue),)),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => HomeScreen());
                        if(controller.usercontroller.text.isNotEmpty && controller.numbercontroller.text.isNotEmpty) {
                            controller.isLoading.value = true;
                            controller.login(controller.usercontroller.text,controller.numbercontroller.text,context);
                        }                },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.blue),
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.83,
                          margin: const EdgeInsets.only(top: 20,bottom: 20),
                          child: const Text("GET OTP",style: TextStyle(color: Colors.white),))),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 70,right: 6),
                          child: const Text("Don't have an account?")),
                      InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_Up(),));
                          },
                          child: const Text("Sign Up",style: TextStyle(color: Colors.blue),))
                    ],
                  )
                ]),
          ),
        )
    );
  }
}
