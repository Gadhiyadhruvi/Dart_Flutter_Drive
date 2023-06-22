// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, use_build_context_synchronously
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/Model/models/profile/default_address_list_model.dart';
import 'package:new_app/Model/models/profile/edit_address_list_model.dart';
import 'Model/data/profile/address_list_data.dart';
import 'server_url/server_url.dart';

class User_Address extends StatefulWidget {
  const User_Address({Key? key}) : super(key: key);

  @override
  State<User_Address> createState() => _User_AddressState();
}

class _User_AddressState extends State<User_Address> {
  List<AddressListData> addressApi = [];
  late DefaultAddressModel defaultAddressApi;
  bool _isLoading = false;
  TextEditingController userController = TextEditingController();

  @override
  void initState() {
    _isLoading = true;
    getAddressList();
    super.initState();
  }

  Future<List<AddressListData>> getAddressList() async {
    Map data ={
      'user_id' : "3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}addressList");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      addressApi = rest.map<AddressListData>((e) => AddressListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("addressApi");
      print(response.body);
    }
    return addressApi;
  }

  Future<void> DefaultAddress()  async {
    Map data = {
      'user_id' : "3",
      'address_id' : "21",
      'is_default' : "1"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}defaultAddress");
    var response = await http.post(url,body: data);
    defaultAddressApi = DefaultAddressModel.fromJsonMap(json.decode(response.body.toString()));
      if(response.statusCode == 200) {
        if(defaultAddressApi.status == 200) {
          setState(() {
            _isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(defaultAddressApi.message)));
          });
        }else {
          setState(() {
            //_isLoading = false;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addresses of User"),
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return EditAddressDialog(address: addressApi[0].address, state: addressApi[0].state, city: addressApi[0].city, pincode: addressApi[0].pincode.toString(), mobile_no: addressApi[0].mobile_no, country:addressApi[0].country ,);
                //     });
                // Navigator.pop(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.97,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orangeAccent.withOpacity(0.3)),
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
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: addressApi.length,
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Column(
                                 children: [
                                   Text("Address : ${addressApi[index].address}"),
                                   const SizedBox(
                                     height: 7,
                                   ),
                                   Container(
                                     margin: const EdgeInsets.only(right: 29),
                                     child: Text("City : ${addressApi[index].city}"),
                                   )
                                 ],
                               ),
                                index == 0
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
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return EditAddressDialog(addressId: addressApi[index].id.toString(),address: addressApi[index].address, state: addressApi[index].state, city: addressApi[index].city,  mobile_no: addressApi[index].mobile_no, country: addressApi[index].country, pincode: addressApi[index].pincode.toString(),);
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
                                        PopupMenuItem<int>(
                                          value: 0,
                                          child: InkWell(
                                            onTap: () {},
                                            child: const Text(
                                              "Delete",
                                              style:
                                              TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 1,
                                          child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return EditAddressDialog(addressId: addressApi[index].id.toString(),address: addressApi[index].address, state: addressApi[index].state, city: addressApi[index].city,  mobile_no: addressApi[index].mobile_no, country: addressApi[index].country, pincode: addressApi[index].pincode.toString(),);
                                                    }).then((value) {
                                                      setState(() {
                                                        getAddressList();
                                                      });
                                                });
                                              },
                                              child: const Text("Edit")),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 2,
                                          child: InkWell(
                                            onTap: () {
                                              DefaultAddress();
                                            },
                                            child: const Text("Set as Default"),
                                          )
                                        ),
                                      ];
                                    }, onSelected: (value) {
                                  if (value == 0) {}
                                  else if (value == 1) {}
                                  else if (value == 2) {
                                  }
                                }),
                              ],
                            ),
                            Text("State : ${addressApi[index].state}"),
                            Text("Country : ${addressApi[index].country}"),
                            Text("Postal Code : ${addressApi[index].pincode}"),
                            Text("Phone : ${addressApi[index].mobile_no}"),
                            const SizedBox(height: 5,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ),
        ]),
      ),
    );
  }
}



class EditAddressDialog extends StatefulWidget {
  final String addressId;
  final String address;
  final String country;
  final String state;
  final String city;
  final String pincode;
  final String mobile_no;
  const EditAddressDialog({Key? key, required this.address, required this.state, required this.city, required this.pincode, required this.mobile_no, required this.country, required this.addressId}) : super(key: key);

  @override
  State<EditAddressDialog> createState() => _EditAddressDialogState();
}

class _EditAddressDialogState extends State<EditAddressDialog> {
  late TextEditingController address;
  late TextEditingController country;
  late TextEditingController state;
  late TextEditingController city;
  late TextEditingController pincode;
  late TextEditingController mobile_no;
  late EditAddressModel editAddressApi;
  // bool _isLoading = false;

  @override
  void initState() {
    // _isLoading = true;
    address = TextEditingController(text: widget.address);
    country = TextEditingController(text: widget.country);
    state = TextEditingController(text: widget.state);
    city = TextEditingController(text: widget.city);
    pincode = TextEditingController(text: widget.pincode);
    mobile_no = TextEditingController(text: widget.mobile_no);
    super.initState();
  }

  Future<void> EditAddress(String address, country, state, city, pincode, mobile_no) async {
    Map data = {
      'address_id' : widget.addressId,
      'user_id' : "3",
      'address' : address,
      'country' : country,
      'state' : state,
      'city' : city,
      'pincode' : pincode,
      'is_default' : "0",
      'mobile_no' : mobile_no,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}editAddress");
    var response = await http.post(url,body: data);
    editAddressApi = EditAddressModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(editAddressApi.status == 200) {
      }else {
        // setState(() {
        //   //_isLoading = false;
        // });
      }
    }else {
      // setState(() {
      //   // _isLoading = false;
      // });
    }
    print("Response");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
                    controller: pincode,
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
                    controller: mobile_no,
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
        ElevatedButton(
            onPressed: () {
            setState(() {
              EditAddress(address.text.toString(), country.text.toString(), city.text.toString(), state.text.toString(), pincode.text.toString(), mobile_no.text.toString());
              Navigator.pop(context);
            });
        }, child: const Text("Add"))
      ],
    );
  }
}