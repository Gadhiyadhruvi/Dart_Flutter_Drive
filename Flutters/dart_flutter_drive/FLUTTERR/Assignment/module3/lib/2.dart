//2. Write a code to display simple alert dialog with title, description and icon when button is clicked

import 'package:flutter/material.dart';

class TwoAS extends StatefulWidget {
  const TwoAS({super.key});

  @override
  State<TwoAS> createState() => _TwoASState();
}

class _TwoASState extends State<TwoAS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Message'),
              content: Text('Your file is saved.'),
              actions: <Widget>[
                new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pop(); // dismisses only the dialog and returns nothing
                  },
                  child: new Text('OK'),
                ),
              ],
            ),
          );
        },
        child: Text(
          "Click",
          style: TextStyle(fontSize: 49),
        ),
      ),
    );
  }
}
