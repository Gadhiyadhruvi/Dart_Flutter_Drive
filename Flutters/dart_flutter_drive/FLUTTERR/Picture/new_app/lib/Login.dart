// ignore_for_file: camel_case_types, file_names, prefer_typing_uninitialized_variables, use_build_context_synchronously
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/Model/models/login_model.dart';
import 'package:new_app/otp.dart';
import 'package:new_app/server_url/server_url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Fogate_Password.dart';
import 'Sign_UP.dart';
import 'package:http/http.dart' as http;

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool _obscureText = true;
  late LoginModel loginApi;
  bool _isLoading = false;
  TextEditingController usercontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  var msg;

  login(String mobileNumber, password, BuildContext ctx) async {
    Map data = {
      'mobile_and_email': mobileNumber,
      'password': password,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}login");
    var response = await http.post(url, body: data);
    loginApi = LoginModel.fromJsonMap(json.decode(response.body.toString()));
    print("Login api ||${loginApi}");
    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs
          .setString('userId', loginApi.loginData.id.toString())
          .whenComplete(() {
        print("data store offline");
      });

      if (loginApi.status == 200) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(loginApi.message)));

        Navigator.push(
            ctx, MaterialPageRoute(builder: ((context) => OTP_Page())));
      } else {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(loginApi.message)));
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
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(children: [
                    Container(
                        width: 300,
                        height: 200,
                        margin: const EdgeInsets.only(bottom: 20),
                        alignment: Alignment.center,
                        child: Image.network(
                          "https://tse1.mm.bing.net/th?id=OIP.mmqGuCtPcQDj1lnnXNYPJAHaHL&pid=Api&P=0",
                          fit: BoxFit.fill,
                        )),
                    const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 30, color: Colors.blue),
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
                          keyboardType: TextInputType.number,
                          controller: usercontroller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.local_phone_outlined,
                              size: 25,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Phone Number",
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
                          controller: numbercontroller,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 170, top: 20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Forgate_Password(),
                                ));
                          },
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                    InkWell(
                        onTap: () {
                          if (usercontroller.text.isNotEmpty &&
                              numbercontroller.text.isNotEmpty) {
                            setState(() {
                              _isLoading = true;
                              login(usercontroller.text, numbercontroller.text,
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
                              "GET OTP",
                              style: TextStyle(color: Colors.white),
                            ))),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 70, right: 6),
                            child: const Text("Don't have an account?")),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Sign_Up(),
                                  ));
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    )
                  ]),
                ),
              ));
  }
}
