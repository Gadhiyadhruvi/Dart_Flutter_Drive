import 'package:flutter/material.dart';

Widget customWidget(String text) {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    alignment: Alignment.center,
    child: Text(
      "Login",
      style: TextStyle(fontSize: 20),
    ),
  );
}
