// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:new_app/Model/models/foregote_password_model.dart';
import 'otp.dart';
import 'server_url/server_url.dart';
import 'package:http/http.dart' as http;

class Forgate_Password extends StatefulWidget {
  const Forgate_Password({Key? key}) : super(key: key);

  @override
  State<Forgate_Password> createState() => _Forgate_PasswordState();
}

class _Forgate_PasswordState extends State<Forgate_Password> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  late ForegotePasswordModel foregotePasswordApi;
  bool _isLoading = false;
  bool _obscureText = true;
  var msg;

  ForegotePassword(String mobileNumber, password,BuildContext ctx) async{
    Map data = {
      'mobile_and_email': mobileNumber,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}forgotPassword");
    var response = await http.post(url,body: data);
    foregotePasswordApi = ForegotePasswordModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200){
      if(foregotePasswordApi.status == 200){
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(foregotePasswordApi.message)));
        Navigator.push(ctx,
            MaterialPageRoute(builder: ((context) =>  OTP_Page())));
      }
      else{
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(foregotePasswordApi.message)));
      }
    }
    else{
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
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 130,left: 30),
          child: Column(
            children: [
              Container(
                  width: 300,
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 30),
                  alignment: Alignment.center,
                  child: Image.network("https://tse1.mm.bing.net/th?id=OIP.mmqGuCtPcQDj1lnnXNYPJAHaHL&pid=Api&P=0",
                    fit: BoxFit.fill,
                  )),
              const Text("FORGATE PASSWORD",style: TextStyle(fontSize: 20,color: Colors.blue),),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.83,
                margin: const EdgeInsets.only(bottom: 20,top: 40),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: numbercontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.local_phone_outlined,size: 25,
                        color: Colors.grey,
                      ),
                      labelStyle:
                      TextStyle(color: Colors.grey,),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.83,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
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
                        Icons.lock,size: 28,
                        color: Colors.grey,
                      ),
                      labelStyle:
                      const TextStyle(color: Colors.grey,),
                      hintText: "PassWord",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    if(numbercontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty) {
                      setState(() {
                        _isLoading = true;
                        ForegotePassword(numbercontroller.text,passwordcontroller.text,context);
                      });
                    }
                    },
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.blue),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.83,
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text("GET OTP",style: TextStyle(color: Colors.white),))),
            ],
          ),
        ),
      ),
    );
  }
}