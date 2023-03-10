import 'package:flutter/material.dart';

Widget myTextField(String hintText, String lableText, bool status,
    IconData icon, TextEditingController emaillogincontroller) {
  return Container(
    margin: EdgeInsets.all(12),
    padding: EdgeInsets.all(8),
    child: TextField(
      obscureText: status,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
      ),
    ),
  );
}
