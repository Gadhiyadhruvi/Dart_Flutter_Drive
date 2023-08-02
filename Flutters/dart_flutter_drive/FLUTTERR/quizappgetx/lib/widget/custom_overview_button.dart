import 'package:flutter/material.dart';

class CustomOverViewButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const CustomOverViewButton({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.43,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.deepPurpleAccent[400]),
        child:
        Text(name,style: const TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }
}
