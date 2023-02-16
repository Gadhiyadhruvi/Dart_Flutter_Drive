import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URL_View extends StatefulWidget {
  const URL_View({super.key});

  @override
  State<URL_View> createState() => _URL_ViewState();
}

class _URL_ViewState extends State<URL_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: ElevatedButton(
          child: Text("Click Here"),
          onPressed: () async {
            const url = "https://www.gmail.com";
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
        ),
      ),
    );
  }
}
