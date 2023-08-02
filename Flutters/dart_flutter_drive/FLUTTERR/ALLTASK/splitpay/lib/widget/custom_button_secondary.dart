import 'package:flutter/material.dart';

import '../resource/colors.dart';

class SecondaryButtonScreen extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const SecondaryButtonScreen({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColors.white),
        child: Text(name,style: TextStyle(color: AppColors.primaryColor,fontSize: 13)),
      ),
    );
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.white,fixedSize: Size(147, 10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),elevation: 0),
        child: Text(name,style: TextStyle(color: AppColors.primaryColor),));
  }
}
