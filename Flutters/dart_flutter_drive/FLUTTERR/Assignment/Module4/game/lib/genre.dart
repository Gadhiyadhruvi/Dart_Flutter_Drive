// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:game/leval.dart';

// //var totalScore = 0;

// class genre extends StatelessWidget {
//   const genre({Key? key}) : super(key: key);
//   Widget build(BuildContext context) {
//     @override
//     void initState() {
//       Future.delayed(
//           Duration(
//             seconds: 6,
//           ), () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Level(),
//             ));
//       });
//     }

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 3, 27, 30),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               child: Image.asset('assets/images/question.png'),
//             ),
//             Container(
//               child: SizedBox(
//                 height: 15,
//               ),
//             ),
//             LinearProgressIndicator(),
//             Container(
//               child: Image.asset('assets/images/loading.png'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:game/genre.dart';
import 'package:game/leval.dart';

class genre extends StatefulWidget {
  const genre({super.key});

  @override
  State<genre> createState() => _genreState();
}

class _genreState extends State<genre> {
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 6,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Level(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 27, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/question.png'),
            ),
            Container(
              child: SizedBox(
                height: 15,
              ),
            ),
            LinearProgressIndicator(),
            Container(
              child: Image.asset('assets/images/loading.png'),
            )
          ],
        ),
      ),
    );
  }
}
