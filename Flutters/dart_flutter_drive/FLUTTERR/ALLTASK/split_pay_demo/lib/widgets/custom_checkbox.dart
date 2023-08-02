import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  final void Function(bool?) onChanged;
  final bool isChecked;

  const CustomCheckBox({Key? key, required this.onChanged, required this.isChecked,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child:
        Checkbox(
            value: isChecked,
            side: BorderSide(color: AppColors.borderColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onChanged: onChanged),
    );
  }
}