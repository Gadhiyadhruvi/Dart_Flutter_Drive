import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer")),
      drawer: Drawer(
        child: Column(
          children: [DrawerHeader(child: Text("\n "))],
        ),
      ),
      // body: Column(children: [
      //   SizedBox(
      //     height: 300,
      //   ),
      //   Container(
      //     child: Text(
      //       "Home Page",
      //       style: TextStyle(fontSize: 40, color: Colors.blueAccent),
      //     ),
      //   ),
      //   SizedBox(
      //     height: 250,
      //   ),
      //   Container(
      //     alignment: Alignment.bottomRight,
      //     margin: EdgeInsets.only(
      //       right: 10,
      //     ),
      //     child: FloatingActionButton(
      //       onPressed: _incrementCounter,
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add),
      //     ),
      //   ),
      // ]),
      // drawer: Drawer(
      //   child: SingleChildScrollView(
      //     child: Container(
      //       child: Column(
      //         children: [],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  Widget MyList() {
    return Column(
      children: [
        ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account"),
            ),
            ListTile(
              leading: Icon(Icons.history_edu_rounded),
              title: Text("About"),
            )
          ],
        )
      ],
    );
  }
}
