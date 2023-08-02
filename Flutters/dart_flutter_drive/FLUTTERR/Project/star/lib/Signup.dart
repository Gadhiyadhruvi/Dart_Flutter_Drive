// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:sizer/sizer.dart';
// import 'package:star/Login.dart';

// class Sign_Up extends StatefulWidget {
//   const Sign_Up({super.key});

//   @override
//   State<Sign_Up> createState() => _Sign_UpState();
// }

// class _Sign_UpState extends State<Sign_Up> {
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController emailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//                 margin: EdgeInsets.only(top: 10.h),
//                 child: Text(
//                   "Let's Get Started",
//                   style: TextStyle(fontSize: 30),
//                 )),
//             SizedBox(
//               height: 7.h,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 6.w, right: 6.w),
//               child: TextFormField(
//                 cursorColor: Colors.blueGrey,
//                 controller: namecontroller,
//                 decoration: InputDecoration(
//                   focusColor: Colors.white,
//                   fillColor: Colors.grey,
//                   hintText: "Full Name",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                   labelText: 'Full Name',
//                   labelStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 6.h,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 6.w, right: 6.w),
//               child: TextFormField(
//                 cursorColor: Colors.blueGrey,
//                 controller: emailcontroller,
//                 decoration: InputDecoration(
//                   focusColor: Colors.white,
//                   fillColor: Colors.grey,
//                   hintText: "E-Mail ",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                   labelText: 'E-Mail',
//                   labelStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 6.h,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 6.w, right: 6.w),
//               child: TextFormField(
//                 cursorColor: Colors.blueGrey,
//                 controller: passwordcontroller,
//                 decoration: InputDecoration(
//                   focusColor: Colors.white,
//                   fillColor: Colors.grey,
//                   hintText: "PassWord",
//                   hintStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                   labelText: 'PassWord',
//                   labelStyle: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 16,
//                     fontFamily: "verdana_regular",
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 6.h,
//             ),
//             Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 5.w),
//                   child: Text("By signing up you agree to you"),
//                 ),
//                 Container(
//                   child: TextButton(
//                       onPressed: () {}, child: Text("Terms and Conditions")),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 4.h,
//             ),
//             SizedBox(
//               width: 76.w,
//               height: 7.h,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal.shade600),
//                 onPressed: () {},
//                 child: Text(
//                   "Sign Up",
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 3.h,
//             ),
//             SizedBox(
//               width: 76.w,
//               height: 7.h,
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Color.fromARGB(255, 11, 38, 85)),
//                   onPressed: () {},
//                   child: Text("Sign Up with Facebook")),
//             ),
//             Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 35.w),
//                   child: Text("Already sign up"),
//                 ),
//                 Container(
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Login(),
//                             ));
//                       },
//                       child: Text("Login")),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:star/Login.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.blueGrey,
                  controller: namecontroller,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.grey,
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.blueGrey,
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.grey,
                    hintText: "E-Mail ",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.blueGrey,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.grey,
                    hintText: "PassWord",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'PassWord',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "By signing up you agree to you",
                ),
                TextButton(
                    onPressed: () {}, child: Text("Terms and Conditions")),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade600),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 11, 38, 85)),
                      onPressed: () {},
                      child: Text("Sign Up with Facebook")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already sign up"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                        child: Text("Login"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
