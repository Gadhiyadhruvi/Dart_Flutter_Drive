import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPhoneCall extends StatelessWidget {
  const MyPhoneCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone Call")),
      body: ElevatedButton(
        child: Text("Call"),
        onPressed: () {
          launch("tel://84017389217");
        },
      ),
    );
  }
}
