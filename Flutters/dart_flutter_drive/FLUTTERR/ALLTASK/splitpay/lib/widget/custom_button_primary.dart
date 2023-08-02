import 'package:flutter/material.dart';
import 'package:splitpay/resource/colors.dart';

class PrimaryButtonScreen extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const PrimaryButtonScreen({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColors.primaryColor),
        child: Text(name,style: TextStyle(color: AppColors.white,fontSize: 13)),
      ),
    );
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,fixedSize: Size(140, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),elevation: 0),
        child: Text(name,style: TextStyle(color: AppColors.white,fontSize: 10),));
  }
}
