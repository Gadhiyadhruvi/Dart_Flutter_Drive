import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'notification.dart';
import 'pushnotification_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _totalnotification;
  PushNotification? _notificationInfo;
  late final FirebaseMessaging _messaging;

  void registerNotification() async {
    await Firebase.initializeApp();
    _messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: true,
    );

    if(settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("User Granded Permission");
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        if(_notificationInfo != null){
          showSimpleNotification(
              Text(_notificationInfo!.title!),
            leading: NotificationBadge(totalNotifications: _totalnotification,),
            subtitle: Text(_notificationInfo!.body!),
            background: Colors.cyan.shade700,
            duration: Duration(seconds: 2),
          );
        }
        PushNotification notification = PushNotification(
          title: message.notification?.title,
          body: message.notification?.body,
          dataTitle: message.data['title'],
          dataBody: message.data['body'],
        );
        setState(() {
          _notificationInfo = notification;
          _totalnotification++;
        });
      });
    } else {
      print("User not Granded Permisstion");
    }
  }



  checkForInitialMessage() async {
    await Firebase.initializeApp();
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      PushNotification notification = PushNotification(
        // title: ,
        // body: message.notification?.body,
      );
      setState(() {
        _notificationInfo = notification;
        _totalnotification++;
      });
    }
  }

  @override
  void initState() {
    _totalnotification = 0;
    checkForInitialMessage();
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      PushNotification notification = PushNotification(
        title: message.notification?.title,
        body: message.notification?.body,
        dataTitle: message.data['title'],
        dataBody: message.data['body'],
      );
      setState(() {
        _notificationInfo = notification;
        _totalnotification++;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Notification"),
          SizedBox(height: 20,),
          // NotificationBadge(totalNotifications: _totalnotification),
          // _notificationInfo != null ? Column(
          //   children: [
          //     Text('Tital : notificationInfo!.dataTitle ?? $_notificationInfo.title'),
          //     Text('Body : notificationInfo!.dataBody ?? $_notificationInfo.body'),
          //   ],
          // ) : Container()
        ],
      ),
    );
  }
}


