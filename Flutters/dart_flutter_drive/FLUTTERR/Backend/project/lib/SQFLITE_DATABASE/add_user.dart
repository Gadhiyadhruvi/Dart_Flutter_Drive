import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/SQFLITE_DATABASE/service.dart';
import 'package:project/SQFLITE_DATABASE/user.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var nameController = TextEditingController();
  var contactController = TextEditingController();

  bool nameValidator = false;
  bool contactValidator = false;
  var userservice = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20),
          color: Color.fromARGB(255, 10, 75, 69),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Add Data",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.teal,
                    ),
                    labelText: "Name",
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.teal),
                    errorStyle: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                    //errorText: "ERROR",
                    enabledBorder: UnderlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                    errorText: nameValidator ? "Field must be required " : null,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2))),
                cursorColor: Colors.teal,
                onSaved: ((newValue) {}),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: contactController,
                // autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    hintText: "Enter Contact Number ",
                    labelText: "Number",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black))
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    errorText: contactValidator ? "Field must required " : null,
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 110, 26, 26),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 2.0))),
                cursorColor: Colors.black,

                onSaved: (String? val) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nameController.text.isEmpty
                              ? nameValidator = true
                              : nameValidator = false;

                          contactController.text.isEmpty
                              ? contactValidator = true
                              : contactValidator = false;
                        });
                        if (nameValidator == false &&
                            contactValidator == false) {
                          var user = User();
                          user.name = nameController.text;
                          user.contect = contactController.text;
                          var result = userservice.saveData(user);
                          print(result);

                          Fluttertoast.showToast(
                            msg: 'Submitted',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            textColor: Colors.white,
                            backgroundColor: Colors.green,
                          );

                          Navigator.pop(context, result);
                        }
                      },
                      child: Text("Save Detail")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nameController.text = "";
                          contactController.text = "";
                        });
                      },
                      child: Text("Clear Detail")),
                  // SizedBox(
                  //   width: 16,
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
