import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomMainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String btnTitle;

  const CustomMainButton({
    super.key,
    required this.onTap,
    required this.btnTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
          shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))) ),
        onPressed: onTap,
        child: Text(
          btnTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
