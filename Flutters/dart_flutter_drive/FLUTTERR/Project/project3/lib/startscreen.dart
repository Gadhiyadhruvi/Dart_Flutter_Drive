import 'package:flutter/material.dart';
import 'package:project3/screen1.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
          "https://i.pinimg.com/736x/14/66/64/146664e72c1d1bde38de64eef68e4625.jpg",
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 30),
            child: const Text("MONEY\nTRACKER\nit's your money",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                )),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen1(),
                      ));
                },
                child: Text("Start >",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ))),
          )
        ],
      ),
      // child: Column(children: [
      //   Expanded(
      //       child: Container(
      //           alignment: Alignment.centerLeft,
      //           child: Padding(
      //               padding: const EdgeInsets.all(50.0),
      //               child: Text("MONEY\nTRACKER\nit's your money",
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 40,
      //                     fontWeight: FontWeight.w700,
      //                   ))))),
      //   Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      //     Padding(
      //         padding: EdgeInsets.symmetric(
      //           horizontal: 30.0,
      //         ),
      //         child: GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Screen1(),
      //                   ));
      //             },
      //             child: Text("Start >",
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 40,
      //                   fontWeight: FontWeight.w500,
      //                 ))))
      //   ])
      // ]
      // )
    ));
  }
}
