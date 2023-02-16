import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp/phone.dart';
import 'package:pinput/pinput.dart';

class OTP_Page extends StatefulWidget {
  const OTP_Page({super.key});

  @override
  State<OTP_Page> createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = "";
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image.asset(
                    'assets/otp.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Phone Verification',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' We need to register people before getting started',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Pinput(
                    length: 6,
                    showCursor: true,
                    onChanged: (value) {
                      code = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: Phone_Page.Verify,
                                  smsCode: code);

                          // Sign the user in (or link) with the credential
                          await auth.signInWithCredential(credential);
                          Navigator.pushNamedAndRemoveUntil(
                              context, "home", (route) => true);
                        } catch (e) {
                          print("wrong OTP");
                        }
                      },
                      child: Text('Verify Phone Number'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade600,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Row(children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, 'phone', (route) => false);
                        },
                        child: Text(
                          'Edit Phone Number ?',
                          style: TextStyle(color: Colors.black),
                        ))
                  ])
                ]))));
  }
}
