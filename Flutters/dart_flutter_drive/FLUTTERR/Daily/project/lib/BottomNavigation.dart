import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

import '';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int current_index = 0;
  List<Widget> mywidget = [MyHome(), MyProfile(), MyContact()];

  void setSelectedPage(int index){
    setState(() {
      current_index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Bottom Navigation"),),
      body:Container(child: mywidget.elementAt(current_index),),
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Contact")
],
      currentIndex: current_index,
      onTap: setSelectedPage,
),
    );
  }
}



///////     Home      //////


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
         child: Text("Home...."),
      )
 
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
         child: Text("Profile...."),
      )
 
    );
  }
}

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        alignment: Alignment.center,
         child: Text("Contact...."),
      )
 
    );
  }
}