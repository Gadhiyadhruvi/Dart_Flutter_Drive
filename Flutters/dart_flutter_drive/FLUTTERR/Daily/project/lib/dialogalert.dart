import 'package:flutter/material.dart';

class DialogAlert extends StatefulWidget {
  const DialogAlert({super.key});

  @override
  State<DialogAlert> createState() => _DialogAlertState();
}

class _DialogAlertState extends State<DialogAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child: ElevatedButton(onPressed: (() {
              showDialogFun(context);
            }), child: Text("Click Hear"),),
      ),
    );
  }
}

void showDialogFun(BuildContext context){
  AlertDialog alertDialog = AlertDialog(
    title: Text("Alert"),
    content: Text("Are you sure you want to close this ??"),
    actions: [ElevatedButton(onPressed: () {}, child: Text("Yes")),
    ElevatedButton(onPressed: () {
      Navigator.of(context).pop();
    }, child: Text("Cancel")),],
  );
  showDialog(
    context: context, 
    builder: (BuildContext context ){
    return alertDialog;
  });
}