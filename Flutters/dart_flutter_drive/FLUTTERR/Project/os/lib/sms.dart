import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SMS extends StatelessWidget {
  const SMS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SMS")),
        body: Container(
            child: ElevatedButton(
                child: Text("SEND SMS"),
                onPressed: () async {
                  var url = Uri.parse("sms.7990219242");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw "invelid url";
                  }
                })));
  }
}
