// ignore_for_file: non_constant_identifier_names, file_names, duplicate_ignore, unrelated_type_equality_checks
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:new_app/Model/data/profile/delete_account_list_data.dart';
import 'Cart.dart';
import 'Edit_Profile.dart';
import 'Favorite.dart';
import 'dart:convert';
import 'Model/models/cartlist/home_count_model.dart';
import 'UserAddress.dart';
import 'package:http/http.dart' as http;
import 'server_url/server_url.dart';

class Profile extends StatefulWidget {
  final VoidCallback onTap;
  const Profile({super.key, required this.onTap});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late DeleteAccountData deleteAccountApi;
  HomeCountModel? homeCountApi;
  final String url = "";
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> DeleteAccount() async{
    Map data = {
      'user_id' : "3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}deleteAccount");
    var response = await http.post(url,body: data);
    deleteAccountApi = DeleteAccountData.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(deleteAccountApi.status == 200) {
        setState(() {
          _isLoading = false;
        });
      }else {
        setState(() {
          _isLoading = false;
        });
      }
    }else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        exit(0);
        },
      child: Scaffold(
        body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.cyan,
                    Colors.blueAccent,
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 45),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/a9.jpg",
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 150, left: 10),
                                child: const Text(
                                  "stags",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: const EdgeInsets.only(right: 60),
                                child: const Text("abc29@gmail.com",
                                    style: TextStyle(color: Colors.white)))
                          ],
                        ),
                        const SizedBox(
                          width: 54,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "LogOut",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                     ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Cart(),
                              ));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  child: const Text(
                                    "In your Cart",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Favorite(),
                              ));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.33,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  child: const Text(
                                    "In your WishList",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          widget.onTap();
                          },
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "15",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  child: const Text(
                                    "You Ordered",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const GalleryAccess(),
                                    ));
                              },
                              child: Column(
                                children: [
                                  const Icon(Icons.edit_calendar_outlined),
                                  Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: const Text("Edit Profile")),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const User_Address(),
                                    ));
                              },
                              child: Column(
                                children: [
                                  const Icon(Icons.location_on_outlined),
                                  Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: const Text("Address")),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                widget.onTap();
                                },
                              child: Column(
                                children: [
                                  const Icon(Icons.list),
                                  Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: const Text("My Orders")),
                                ],
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Favorite(),
                                ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 190),
                            child: Column(
                              children: [
                                const Icon(Icons.favorite_outline),
                                Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    child: const Text("My WishList")),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              height: MediaQuery.of(context).size.height / 2.23,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                color: Colors.grey[150],
                semanticContainer: true,
                elevation: 2,
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child: const Icon(Icons.library_add_check_outlined)),
                          const Text("FAQ's")
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child: const Icon(Icons.question_mark)),
                          const Text("Terms & Conditions")
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child: const Icon(Icons.privacy_tip_outlined)),
                          const Text("Privacy Policy")
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child: const Icon(Icons.contact_page_outlined)),
                          const Text("Contact Us")
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child:
                              const Icon(Icons.report_gmailerrorred_outlined)),
                          const Text("About Us")
                        ],
                      ),
                      const Divider(),
                      InkWell(
                        onTap: () {
                          showDialogfun(context);
                        },
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10, right: 8),
                                child: const Icon(Icons.delete_outline)),
                            const Text("Delete My Account")
                          ],
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 8),
                              child: const Icon(Icons.logout)),
                          const Text("LogOut")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

void showDialogfun(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    content: SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Do you want to delete your account from our system?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
                "Once your account is deleted from our system, you will lose your balance and other information from our system."),
          ),
        ],
      ),
    ),
    actions: [
      ElevatedButton(
          onPressed: () {},
          child: const Text("Yes")),
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No"))
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}