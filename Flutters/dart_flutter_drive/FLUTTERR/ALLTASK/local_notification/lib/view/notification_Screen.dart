// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:local_notification/controller/notification_api.dart';

class Local_notification extends StatefulWidget {
  const Local_notification({Key? key}) : super(key: key);

  @override
  State<Local_notification> createState() => _Local_notificationState();
}

class _Local_notificationState extends State<Local_notification> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.initialiseNotifications();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 150,bottom: 30),
            child: Center(
              child: Text("Local Notification", style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w600),),
            )
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: () {
              notificationServices.sendNotification("this is title", "this is body");
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20,right: 10),
                      child: const Icon(Icons.notifications),
                    ),
                    const Text("Simple Notification",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: () {
              notificationServices.scheduledNotification("bjhjhbj", "hjj");
              // NotificationApi.showScheduledNotification(
              //   title: 'Dinner',
              //   body: 'Today at 6 pm',
              //   payload: 'dinner_6pm',
              //   scheduledDate: DateTime.now().add(Duration(seconds: 12))
              // );
              // final snackBar = SnackBar(
              //   content: Text('Scheduled in 12 second! ',style: TextStyle(fontSize: 25),),
              //   backgroundColor: Colors.green,
              // );
              // ScaffoldMessenger.of(context)
              // ..removeCurrentSnackBar()
              // ..showSnackBar(snackBar);
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: const Icon(Icons.notifications_active),
                  ),
                  const Text("Scheduled Notification",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: () {
              notificationServices.stopNotification();
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: const Icon(Icons.notifications_active),
                  ),
                  const Text("Stop Notification",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String? payload;
  const SecondPage({Key? key, required this.payload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("kfvbj"),),
      body:  Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(payload ?? '',style: const TextStyle(fontSize: 48,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const Text('PAYLOAD',style: TextStyle(fontSize: 35),)
          ],
        ),
      ),
    );
  }
}
