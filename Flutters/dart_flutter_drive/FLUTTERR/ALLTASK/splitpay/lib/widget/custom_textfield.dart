import 'package:flutter/material.dart';
import '../resource/colors.dart';

class TextFieldScreen extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final VoidCallback onTap;
  const TextFieldScreen({Key? key, required this.hintText, required this.controller, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
          keyboardType: TextInputType.number,
          controller: controller,
          onTap: onTap,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.textHintColor,
            ),
          ),
        );
  }
}
