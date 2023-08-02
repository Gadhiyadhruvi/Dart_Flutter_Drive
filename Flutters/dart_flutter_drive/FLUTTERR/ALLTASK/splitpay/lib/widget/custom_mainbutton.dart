import 'package:flutter/material.dart';

import '../resource/colors.dart';

class MainButtonScreen extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const MainButtonScreen({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),elevation: 0),
          child: Text(name,style: TextStyle(color: AppColors.white),)),
    );
  }
}
