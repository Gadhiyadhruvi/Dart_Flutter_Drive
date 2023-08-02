import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomButtonSecondary extends StatelessWidget {
  final VoidCallback onBtnPress;
  final String btnTitle;

  const CustomButtonSecondary({super.key, required this.onBtnPress, required this.btnTitle, });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(side: BorderSide(color: AppColors.primaryColor),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onBtnPress,
      child: Text(btnTitle,style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primaryColor),),
    );
  }
}
