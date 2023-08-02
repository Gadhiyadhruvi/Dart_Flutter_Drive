import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 30),
                )),
            SizedBox(
              height: 7.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 6.w, right: 6.w),
              child: TextFormField(
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
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 6.w, right: 6.w),
              child: TextFormField(
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
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              width: 76.w,
              height: 7.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade600),
                onPressed: () {},
                child: Text(
                  "Login",
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 76.w,
              height: 7.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 38, 85)),
                  onPressed: () {},
                  child: Text("Login with Facebook")),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35.w),
                  child: Text("NewWith?"),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {}, child: Text("Create Account")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
