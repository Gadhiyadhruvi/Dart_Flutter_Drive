import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final VoidCallback onTap;



   CustomTextFormField({super.key, required this.hintText, required this.controller, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,

      decoration: InputDecoration(
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              isDense: true,
              //contentPadding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              hintStyle: Theme.of(context).textTheme.bodyLarge)
          .copyWith(
              hintStyle:  TextStyle(
        color: AppColors.borderColor,
      )),
    );
  }
}
