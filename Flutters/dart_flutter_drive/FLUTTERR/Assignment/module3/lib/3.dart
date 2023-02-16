// 3. Write a code to display alert dialog with positive, negative and neutral button and display toast
// respectively user's choice

import 'package:flutter/material.dart';

class ThirdAS extends StatefulWidget {
  const ThirdAS({super.key});

  @override
  State<ThirdAS> createState() => _ThirdASState();
}

class _ThirdASState extends State<ThirdAS> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pop(); // dismisses only the dialog and returns nothing
                      },
                      child: new Text('Yes'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pop(); // dismisses only the dialog and returns nothing
                      },
                      child: new Text('No'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pop(); // dismisses only the dialog and returns nothing
                      },
                      child: new Text('OK'),
                    ),
                  ],
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
