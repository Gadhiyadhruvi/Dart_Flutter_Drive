import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:os/Navigation%20Drower/Home_Page.dart';

class Dash_Board extends StatefulWidget {
  const Dash_Board({super.key});

  @override
  State<Dash_Board> createState() => _Dash_BoardState();
}

enum DrawerSections { dashboard, contact, profile }

var mainContainer;
var currentPage = DrawerSections.dashboard;

class _Dash_BoardState extends State<Dash_Board> {
  @override
  Widget build(BuildContext context) {
    setPage();
    return Scaffold(
        appBar: AppBar(title: Text("Navigation Drawer")),
        body: mainContainer,
        drawer: Drawer(
            backgroundColor: Colors.yellow.shade900,
            child: SingleChildScrollView(
                child: Container(
                    child: Column(
              children: [MyDrawerList()],
            )))));
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          menuItem(1, "Dashboard", Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contact", Icons.call,
              currentPage == DrawerSections.contact ? true : false),
          Divider(),
          menuItem(3, "Profile", Icons.person,
              currentPage == DrawerSections.profile ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
        color: selected ? Colors.white : Colors.transparent,
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {
                if (id == 1) {
                  currentPage = DrawerSections.dashboard;
                } else if (id == 2) {
                  currentPage = DrawerSections.contact;
                } else if (id == 3) {
                  currentPage = DrawerSections.profile;
                }
              });
            },
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(children: [
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: Colors.black),
                  )
                ]))));
  }
}

void setPage() {
  if (currentPage == DrawerSections.dashboard) {
    mainContainer = Home_Page();
  } else if (currentPage == DrawerSections.contact) {
    // contact page
  } else if (currentPage == DrawerSections.profile) {
    //
  }
}
