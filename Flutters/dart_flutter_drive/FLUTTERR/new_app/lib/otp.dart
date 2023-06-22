// ignore_for_file: camel_case_types
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'Main_Screen.dart';

class OTP_Page extends StatefulWidget {
  //String phone;
  OTP_Page({Key? key,
    //required this.phone
  }) : super(key: key);

  @override
  State<OTP_Page> createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  int _secondsRemaining = 15;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining == 0) {
          _timer!.cancel();
        } else {
          _secondsRemaining--;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // FirebaseAuth auth = FirebaseAuth.instance;
  // String devicetoken = "";
  // String otp = "";
  //
  // void verifyCode() async {
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: devicetoken, smsCode: otp);
  //   await auth.signInWithCredential(credential).then((value){
  //     final User? user = auth.currentUser;
  //     final uid = user?.uid;
  //     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainScreen(),), (route) => false);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/phone.png',fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width*0.5,
                      height: MediaQuery.of(context).size.height*0.3,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'OTP VERIFICATION',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      ' Enter your Configration Code..',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Pinput(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      length: 4,
                      showCursor: true,
                      onChanged: (value) {
                        setState(() {
                          //otp = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 130),
                          child: Text("TimeOut in   "),
                        ),
                        Text("$_secondsRemaining"),
                      ],
                    ),
                    _secondsRemaining == 0 ? InkWell(
                      onTap: (){
                        setState(() {
                          _secondsRemaining = 15;
                          startTimer();
                        });
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(left: 20,top: 10),
                          child: Text("Resend Otp")),
                    ) : const Text(""),
                    Container(
                      height: 45,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainScreen(),), (route) => false);
                          //verifyCode();
                          },
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.blue),
                            width: MediaQuery.of(context).size.width*0.7,
                           height: MediaQuery.of(context).size.height*0.5,
                            child: const Text('Verify',style: TextStyle(color: Colors.white),)),
                        ),
                    ),
                    ]
              ),
            )
        )
    );
  }
}