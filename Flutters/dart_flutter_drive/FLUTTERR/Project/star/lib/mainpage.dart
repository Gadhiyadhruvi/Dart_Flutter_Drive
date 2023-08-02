import 'package:flutter/material.dart';
import 'package:star/Login.dart';
import 'package:star/Screen1.dart';
import 'package:star/Screen2.dart';
import 'package:star/Screen3.dart';
import 'package:star/Screen4.dart';
import 'package:star/Signup.dart';
// Construct Dots Indicator

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => Main_pageState();
}

class Main_pageState extends State<Main_page> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;
  final List<Widget> _pages = [
    const Screen2(),
    const Screen3(),
    const Screen4(),
    Sign_Up()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page == 3) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sign_Up(),
            ));
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: _activePage == index
                                  ? Color.fromARGB(255, 17, 59, 58)
                                  : Color.fromARGB(255, 241, 232, 232),
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
