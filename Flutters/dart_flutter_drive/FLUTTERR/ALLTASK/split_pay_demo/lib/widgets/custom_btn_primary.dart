import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomButtonPrimary extends StatelessWidget {
  final VoidCallback onBtnPress;
  final String btnTitle;

  const CustomButtonPrimary(
      {super.key, required this.onBtnPress, required this.btnTitle, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onBtnPress,
      style:  ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),elevation: 0),
      child: Text(btnTitle,style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
    );
  }
}
