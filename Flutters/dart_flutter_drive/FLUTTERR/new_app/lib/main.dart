//@dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'SpleshScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String deviceToken = "";


  @override
  void initState() {
    getDeviceToken();
    super.initState();
  }

  Future<void> getDeviceToken() async{
    deviceToken = await FirebaseMessaging.instance.getToken() ?? "";
    print("********** Device Token **********");
    print(deviceToken);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splesh_Screen(),
    );
  }
}