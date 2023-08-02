import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/login_controlle.dart';
import 'package:splitpay/screens/dashboard_screen.dart';
import 'package:splitpay/widget/custom_mainbutton.dart';
import '../widget/custom_checkbox.dart';
import '../widget/custom_textfield.dart';

class Login_Screen extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  static String pageId = '/screenLogin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(children: [
              SvgPicture.asset(
                'assets/images/shape.svg',
              ),
              Positioned(
                bottom: 0,
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/images/logo.png'),
              ),
            ]),
            const Text("Sign In",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Account Number"),
                  const SizedBox(height: 10,),
                  TextFieldScreen(
                    controller: controller.accountcontroller,
                    hintText: 'Account Number', onTap: (){},
                  ),
                  const SizedBox(height: 20,),
                  Text("Account Number"),
                  const SizedBox(height: 10,),
                  TextFieldScreen(
                    controller: controller.cashiercontroller,
                    hintText: 'Cashier',
                    onTap: (){},
                  ),
                  const SizedBox(height: 20,),
                  Text("Account Number"),
                  const SizedBox(height: 10,),
                  TextFieldScreen(
                    controller: controller.passwordcontroller,
                    hintText: 'PassWord ',
                    onTap: (){},
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => CheckBoxScreen(
                        onChanged: (value) { controller.isRemember.value = value!; },
                        isChecked: controller.isRemember.value,),),
                      const Text("Remember Me"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.maxFinite,
                    child: MainButtonScreen(
                        name: 'Sign In',
                        onPressed: () {
                          Get.toNamed(DashBoardScreen.pageId );
                        }
                    ),
                  )
                ],
              ),)
          ],
        ),
      )
    );
  }
}
