// ignore_for_file: camel_case_types, file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Model/data/profile/address_list_data.dart';
import 'server_url/server_url.dart';

class User_Address extends StatefulWidget {
  final String address;
  final String city;
  final String state;
  final String country;
  final String postal_code;
  final String phone;
  const User_Address(
      {Key? key,
        required this.address,
        required this.city,
        required this.state,
        required this.country,
        required this.postal_code,
        required this.phone})
      : super(key: key);

  @override
  State<User_Address> createState() => _User_AddressState();
}

class _User_AddressState extends State<User_Address> {
  List<UserDetails> userdetails = [];
  List<AddressListData> addressApi = [];
  TextEditingController userController = TextEditingController();

  @override
  void initState() {
    getAddressList();
    userdetails.add(UserDetails(
        address: "divs",
        city: "v",
        state: "ff",
        country: "daddy",
        postal_code: "257865",
        phone: "5768992646"));
    userdetails.add(UserDetails(
        address: "devs",
        city: "svf",
        state: "efd",
        country: "hj",
        postal_code: "361242",
        phone: "4586724565"));
    userdetails.add(UserDetails(
        address: "devised",
        city: "svf",
        state: "efd",
        country: "hj",
        postal_code: "361242",
        phone: "4586724565"));
    userdetails.add(UserDetails(
        address: "divs",
        city: "svf",
        state: "efd",
        country: "hj",
        postal_code: "361242",
        phone: "4586724565"));
    userdetails.add(UserDetails(
        address: "devs",
        city: "svf",
        state: "efd",
        country: "hj",
        postal_code: "361242",
        phone: "4586724565"));
    userdetails.add(UserDetails(
        address: "devised",
        city: "svf",
        state: "efd",
        country: "hj",
        postal_code: "361242",
        phone: "4586724565"));
    super.initState();
  }

  Future<List<AddressListData>> getAddressList() async {
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}addressList");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      addressApi = rest.map<AddressListData>((e) => AddressListData.fromJsonMap(e)).toList();
      setState(() {
       // _isLoading = false;
      });
      print("addressApi");
      print(response.body);
    }
    return addressApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addresses of User"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialogfun(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.97,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellow[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Add Address"),
                    Icon(
                      Icons.add,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  //addressApi.length;
                  return setState(() {});
                });
              },
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userdetails.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: index == 0
                            ? const BorderSide(
                          color: Colors.blue,
                        )
                            : const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, bottom: 7),
                                    child: Text("Address : ${widget.address}"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Text(("City : ${widget.city}")),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 188),
                                child: index == 0
                                    ? PopupMenuButton(itemBuilder: (context) {
                                  return [
                                    const PopupMenuItem<int>(
                                      value: 0,
                                      child: Text(
                                        "Delete",
                                        style:
                                        TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 1,
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              setState(() {
                                                // address.text = widget.address;
                                                // city.text = widget.city;
                                                // state.text = widget.state;
                                                // country.text = widget.country;
                                                // postalCode.text = widget.postal_code;
                                                // phone.text = widget.phone;
                                              });
                                              showDialogfun(context);
                                            });
                                          },
                                          child: const Text("Edit")),
                                    ),
                                  ];
                                }, onSelected: (value) {
                                  if (value == 0) {}
                                  else if (value == 1) {}
                                })
                                    : PopupMenuButton(
                                    itemBuilder: (context) {
                                      return [
                                        const PopupMenuItem<int>(
                                          value: 0,
                                          child: Text(
                                            "Delete",
                                            style:
                                            TextStyle(color: Colors.red),
                                          ),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 1,
                                          child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  // address.text = widget.address;
                                                  // city.text = widget.city;
                                                  // state.text = widget.state;
                                                  // country.text = widget.country;
                                                  // postalCode.text = widget.postal_code;
                                                  // phone.text = widget.phone;
                                                });
                                                showDialogfun(context);
                                              },
                                              child: const Text("Edit")),
                                        ),
                                        const PopupMenuItem<int>(
                                          value: 2,
                                          child: Text("Set as Default"),
                                        ),
                                      ];
                                    }, onSelected: (value) {
                                  if (value == 0) {}
                                  else if (value == 1) {}
                                  else if (value == 2) {
                                  }
                                }),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 2),
                            child: Text("State : ${widget.state}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Country : ${widget.country}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Postal Code : ${widget.postal_code}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Phone : ${widget.phone}"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  TextEditingController address = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController phone = TextEditingController();

  void showDialogfun(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      content: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Address*"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: address,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter Address",
                      border: InputBorder.none,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Country*"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child:  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: country,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter Country",
                      border: InputBorder.none,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("State*"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: state,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter State",
                      border: InputBorder.none,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("City*"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: city,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter City",
                      border: InputBorder.none,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Postal Code"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: postalCode,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter Postal Code",
                      border: InputBorder.none,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Phone"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child:  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      hintText: "Enter Phone",
                      border: InputBorder.none,
                    )),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.2,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(color: Colors.grey.shade300),
                  right: BorderSide(color: Colors.grey.shade300),
                  top: BorderSide(color: Colors.grey.shade300),
                  bottom: BorderSide(color: Colors.grey.shade300)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.blue),
                ))),
        ElevatedButton(onPressed: () {}, child: const Text("Add"))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

class UserDetails {
  final String address;
  final String city;
  final String state;
  final String country;
  // ignore: non_constant_identifier_names
  final String postal_code;
  final String phone;

  UserDetails({
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    // ignore: non_constant_identifier_names
    required this.postal_code,
    required this.phone,
  });
}

void showDialogfunction(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    content: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 10),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("Address*"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: AutofillHints.addressCity,
                        hintText: "Enter Address",
                        border: InputBorder.none,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("Country*"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Enter Country",
                        border: InputBorder.none,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("State*"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Enter State",
                        border: InputBorder.none,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("City*"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Enter City",
                        border: InputBorder.none,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("Postal Code"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Enter Postal Code",
                        border: InputBorder.none,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text("Phone"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Enter Phone",
                        border: InputBorder.none,
                      )),
                ),
              ),
            ],
          );
        },
      ),
    ),
    actions: [
      Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.2,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.grey.shade300),
                right: BorderSide(color: Colors.grey.shade300),
                top: BorderSide(color: Colors.grey.shade300),
                bottom: BorderSide(color: Colors.grey.shade300)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.blue),
              ))),
      ElevatedButton(
          onPressed: () {

          }, child: const Text("Add"))
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}