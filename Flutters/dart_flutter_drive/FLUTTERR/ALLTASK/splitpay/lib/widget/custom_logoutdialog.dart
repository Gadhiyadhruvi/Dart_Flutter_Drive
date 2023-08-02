// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/colors.dart';
import '../screens/login_screen.dart';

 LogoutDialog(context) async {

  return showDialog(
    builder: (_) {
        return AlertDialog(
          actions: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Are you sure logout this??",style: TextStyle(fontSize: 18),),
                  SizedBox(

                    child: IconButton(onPressed: () {
                      Get.back();
                    },
                        icon: Icon(Icons.close),))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.05,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColors.white),
                    child: Text('Cancel',style: TextStyle(color: AppColors.primaryColor,fontSize: 15)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Login_Screen.pageId);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.05,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColors.primaryColor),
                    child: Text('Yes',style: TextStyle(color: AppColors.white,fontSize: 15)),
                  ),
                ),
              ],
            )
          ],
        );
      },
      context: context);
}