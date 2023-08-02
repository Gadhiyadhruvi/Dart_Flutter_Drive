import 'package:flutter/material.dart';

class CheckBoxScreen extends StatelessWidget {
  final void Function(bool?) onChanged;
  final bool isChecked;

  const CheckBoxScreen({Key? key, required this.onChanged, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child:
      Checkbox(
          value: isChecked,
          side: BorderSide(color: Color(0xFFD0D3D7)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: onChanged),
    );
    // return Checkbox(
    //     value: isChecked,
    //     onChanged: onChanged,
    // side: BorderSide(color: Color(0xFFD0D3D7)),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),);
  }
}
