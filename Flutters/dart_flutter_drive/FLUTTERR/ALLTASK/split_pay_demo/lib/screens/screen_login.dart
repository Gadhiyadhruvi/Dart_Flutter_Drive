import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:split_pay_demo/get/screens.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import 'package:split_pay_demo/widgets/custom_checkbox.dart';
import 'package:split_pay_demo/widgets/custom_mainbtn.dart';
import 'package:split_pay_demo/widgets/custom_textformfield.dart';

class LoginScreen extends GetView<LoginController> {
  static String pageId = '/screenLogin';
  final controllerr = Get.put(LoginController());
  final GlobalKey formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    return WillPopScope(onWillPop: () async {
      return false;
    },
      child: Scaffold(
        body: SingleChildScrollView(
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
              Text(
                'Sign In',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineLarge,
              ),
              const SizedBox(height: 28,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account number',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                        color: AppColors.textHintColor,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CustomTextFormField(hintText: 'Enter account number',
                      controller: controllerr.accountNumTEC,
                      onTap: () {},),
                    const SizedBox(height: 28,),
                    Text(
                      'Cashier access code',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                        color: AppColors.textHintColor,
                      ),
                    ),
                    CustomTextFormField(hintText: 'Enter cashier access code',
                      controller: controllerr.cashAcCodeTEC,
                      onTap: () {},),
                    const SizedBox(height: 28,),
                    Text(
                      'Password',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                        color: AppColors.textHintColor,
                      ),
                    ),
                    TextFormField(
                      controller: controllerr.passwordTEC,
                      onTap: () {},
                      decoration: InputDecoration(
                          hintText: 'Enter password',
                          suffixIcon: SizedBox(height: 24,
                            width: 24,
                            child: IconButton(onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/images/eye.svg'),),),
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          isDense: true,
                          //contentPadding: const EdgeInsets.fromLTRB(8,0,8,0),
                          hintStyle: Theme
                              .of(context)
                              .textTheme
                              .bodyLarge)
                          .copyWith(
                          hintStyle: TextStyle(
                            color: AppColors.borderColor,
                          )),),
                    const SizedBox(height: 20,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => CustomCheckBox(onChanged: (value) {
                              controllerr.isCheckedRemindMe.value = value!;
                            },
                              isChecked: controllerr.isCheckedRemindMe
                                  .value,),
                          ),
                          Text('Remember me',
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                              color: AppColors.textHintColor,),),
                        ]),
                    const SizedBox(height: 20,),
                    SizedBox(width: double.infinity,
                      child: CustomMainButton(onTap: () {
                        Get.toNamed(DashBoardScreen.pageId);
                      }, btnTitle: 'Sign In'),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Text('Powered by Sumant', style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                color: AppColors.textHintColor,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
