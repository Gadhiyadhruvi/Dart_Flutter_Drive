// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings _androidInitializationSettings = AndroidInitializationSettings('logo');

  void initialiseNotifications() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: _androidInitializationSettings,
    );

   await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void sendNotification(String title , String body) async {
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        'channelid',
        'channelName',
        importance: Importance.max,
        priority: Priority.high,
    );
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );
    await _flutterLocalNotificationsPlugin.show(
        0,
        title,
        body,
        notificationDetails
    );
  }

  void scheduledNotification(String title , String body) async {
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      'channelid',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );
    await _flutterLocalNotificationsPlugin.periodicallyShow(
        0,
        title,
        body,
        RepeatInterval.everyMinute,
        notificationDetails
    );
  }

  void stopNotification() async {
    _flutterLocalNotificationsPlugin.cancel(0);
  }

}

// class NotificationApi {
//   static final _notification = FlutterLocalNotificationsPlugin();
//   static final onNotification = BehaviorSubject<String?>();
//   static Future _notificationDetails() async {
//     return const NotificationDetails(
//       android: AndroidNotificationDetails(
//         'channel id',
//         'channel name',
//         'channel description',
//         importance: Importance.max
//       ),
//       iOS: IOSNotificationDetails()
//     );
//   }
//
//   static Future init({bool initScheduled = false}) async {
//     final android = AndroidInitializationSettings('@mipmap/ic_lancher');
//     final iOS = IOSInitializationSettings();
//     final settings = InitializationSettings(
//       android: android,
//       iOS: iOS,
//     );
//     await _notification.initialize(
//       settings,
//       onSelectNotification: (payload) async {
//         onNotification.add(payload);
//       },
//     );
//
//     if(initScheduled) {
//       tz.initializeTimeZones();
//       final locationname = await FlutterNativeTimezone.getLocalTimezone();
//       tz.setLocalLocation(tz.getLocation(locationname));
//     }
//   }
//
//
//   static Future showNotification({
//     int id = 0,
//     String? title,
//     String? body,
//     String? payload,
// }) async => _notification.show(
//       id,
//       title,
//       body,
//       await _notificationDetails(),
//       payload: payload,
//   );
//
//   static Future showScheduledNotification({
//     int id = 0,
//     String? title,
//     String? body,
//     String? payload,
//     required DateTime scheduledDate,
//   }) async => _notification.zonedSchedule(
//     id,
//     title,
//     body,
//     _scheduledWeekly(const Time(8), days: [DateTime.monday, DateTime.tuesday]),
//
//     await _notificationDetails(),
//     payload: payload,
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//     matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
//   );
//
//   static tz.TZDateTime _scheduledDaily(Time time){
//     final now = tz.TZDateTime.now(tz.local);
//     final scheduledDate = tz.TZDateTime(tz.local, now.year, now.month,
//                            time.hour, time.minute, time.second);
//     return scheduledDate.isBefore(now)
//         ? scheduledDate.add(const Duration(days: 1))
//         : scheduledDate;
//   }
//
//   static tz.TZDateTime _scheduledWeekly(Time time, {required List<int> days}){
//     tz.TZDateTime scheduledDate = _scheduledDaily(time);
//
//     while (!days.contains(scheduledDate.weekday)) {
//       scheduledDate = scheduledDate.add(const Duration(days: 1));
//     }
//     return scheduledDate;
//   }
// }