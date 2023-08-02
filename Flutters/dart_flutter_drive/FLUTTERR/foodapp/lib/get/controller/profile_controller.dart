import 'package:flutter/material.dart';
import 'package:foodapp/model/profile_general_model.dart';
import 'package:get/get.dart';
import '../../model/profeil_more_model.dart';
import '../../model/profile_notification_model.dart';

class ProfileController extends GetxController {
  RxBool status = false.obs;

  List<ProfileGeneralModel> profilegenerallist = [
    ProfileGeneralModel(
        namegeneral: "Account Information",
        subnamegeneral: "Change Your Account Information",
        icon1: Icons.person,
    ),
    ProfileGeneralModel(
      namegeneral: "Password",
      subnamegeneral: "Change Your Password",
      icon1: Icons.lock,
    ),
    ProfileGeneralModel(
      namegeneral: "Payment Nethods",
      subnamegeneral: "Add Your Credit & Debit Card",
      icon1: Icons.book_rounded,
    ),
    ProfileGeneralModel(
      namegeneral: "Delivery Locations",
      subnamegeneral: "Change Your Delivery Locations",
      icon1: Icons.location_on,
    ),
    ProfileGeneralModel(
      namegeneral: "Invite your friends",
      subnamegeneral: "Get 59 for each invitation!",
      icon1: Icons.change_circle_outlined,
    ),
  ];

  List<ProfileNotificationModel> profilenotificationlist = [
    ProfileNotificationModel(
        namegeneral: "Notifications",
        subnamegeneral: "You will receive daily updates",
    ),
    ProfileNotificationModel(
      namegeneral: "Promotional Notifications",
      subnamegeneral: "Get notified when promotions",
    ),
  ];

  List<ProfileMoreModel> profilemorelist = [
    ProfileMoreModel(
      namegeneral: "Rate Us",
      subnamegeneral: "You will receive  daily updates",
      icon1: Icons.star,
    ),
    ProfileMoreModel(
      namegeneral: "FAQ",
      subnamegeneral: "Frequently Asked Questions",
      icon1: Icons.book_rounded,
    ),
  ];
}