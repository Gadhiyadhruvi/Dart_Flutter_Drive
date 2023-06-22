// ignore_for_file: use_build_context_synchronously, camel_case_types

import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Model/models/signup_model.dart';
import 'Login.dart';
import 'otp.dart';
import 'server_url/server_url.dart';
import 'package:http/http.dart' as http;

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool _obscureText = true;
  late SignUpModel signupApi;
  bool _isLoading = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  Sign_Up(String name, email, mobile, password, confirmpassword,
      BuildContext ctx) async {
    Map data = {
      'name': name,
      'email': email,
      'mobile_no': mobile,
      'password': password,
      'confirm_password': confirmpassword,
    };

    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}signup");
    var response = await http.post(url, body: data);
    signupApi = SignUpModel.fromJsonMap(json.decode(response.body.toString()));
    if (response.statusCode == 200) {
      if (signupApi.status == 200) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(signupApi.message)));
        Navigator.push(
            ctx, MaterialPageRoute(builder: ((context) => OTP_Page())));
      } else {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(signupApi.message)));
      }
    } else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  void _toggle() {
    setState(() {
      _obscureText = _obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(bottom: 22),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image.network(
                          "https://tse4.mm.bing.net/th?id=OIP.5_B7u5am3AqFKLfOWMNwbQHaFj&pid=Api&P=0",
                        )),
                    const Text(
                      "Let's Get Started",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: const Border(
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey),
                              bottom: BorderSide(color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: namecontroller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person_outline,
                              size: 25,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter Name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      margin: const EdgeInsets.only(bottom: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: const Border(
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey),
                              bottom: BorderSide(color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: emailcontroller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email_outlined,
                              size: 25,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter E-Mail",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      margin: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: const Border(
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey),
                              bottom: BorderSide(color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: mobilecontroller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.mobile_friendly,
                              size: 25,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter Mobile Number",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: const Border(
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey),
                              bottom: BorderSide(color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: _toggle,
                            ),
                            icon: const Icon(
                              Icons.lock,
                              size: 28,
                              color: Colors.grey,
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "PassWord",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.83,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: const Border(
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey),
                              bottom: BorderSide(color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          obscureText: true,
                          controller: confirmpasswordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: _toggle,
                            ),
                            icon: const Icon(
                              Icons.lock,
                              size: 28,
                              color: Colors.grey,
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Confirm PassWord",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "By signing up you agree   ",
                          style: const TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: "Terms and Conditions",
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => () => const Login_Screen())
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          if (namecontroller.text.isNotEmpty &&
                              emailcontroller.text.isNotEmpty &&
                              mobilecontroller.text.isNotEmpty &&
                              passwordcontroller.text.isNotEmpty &&
                              confirmpasswordcontroller.text.isNotEmpty) {
                            setState(() {
                              _isLoading = true;
                              Sign_Up(
                                  namecontroller.text,
                                  emailcontroller.text,
                                  mobilecontroller.text,
                                  passwordcontroller.text,
                                  confirmpasswordcontroller.text,
                                  context);
                            });
                          }
                        },
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.blue),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.83,
                            margin: const EdgeInsets.only(top: 20, bottom: 20),
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(color: Colors.white),
                            ))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already sign up"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login_Screen(),
                                  ));
                            },
                            child: const Text("Login"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
