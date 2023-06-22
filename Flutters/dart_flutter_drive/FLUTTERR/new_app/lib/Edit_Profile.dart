// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_app/Model/models/profile/change_password_list_model.dart';
import 'package:new_app/Model/models/userprofile_model.dart';
import 'package:http/http.dart' as http;
import 'server_url/server_url.dart';

class GalleryAccess extends StatefulWidget {
  const GalleryAccess({super.key});

  @override
  State<GalleryAccess> createState() => _GalleryAccessState();
}

class _GalleryAccessState extends State<GalleryAccess> {
  bool _obscureText = true;
  bool _isLoading = false;
  late UserProfileModel userProfileApi;
  late ChangePasswordModel changePasswordApi;
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  void initState() {
    _isLoading = true;
    super.initState();
  }

  userProfile(String mobilenumber, name, email, BuildContext ctx) async {
    Map data = {
      'user_id' : "176"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}userProfile");
    var response = await http.post(url, body: data);
    userProfileApi = UserProfileModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200){
      if(userProfileApi.status == 200){
        setState(() {
          //_isLoading = false;
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(userProfileApi.message)));
      }
      else{
        setState(() {
         // _isLoading = false;
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(userProfileApi.message)));
      }
    }
    else{
      setState(() {
        //_isLoading = false;
      });
    }
    print("Response");
    print(response.body);

  }

  changePassword(String password, confirmpassword, BuildContext ctx) async {
    Map data = {
      'user_id' : "",
      'password' : "",
      're_enter_password' : "",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}changePassword");
    var response = await http.post(url, body: data);
    changePasswordApi = ChangePasswordModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(changePasswordApi.status == 200) {
        setState(() {

        });
      }else {
        setState(() {

        });
      }
    }else {
      setState(() {

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
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: _imageFile != null
                        ? CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: FileImage(_imageFile!),
                    ) : const CircleAvatar(
                      maxRadius: 40,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person_outline,color: Colors.black45,size: 60,),
                        ),
                  );
                },
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: const Text(
                    "Basic Information",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1.5,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shadowColor: Colors.grey[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Phone",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shadowColor: Colors.grey[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shadowColor: Colors.grey[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showPicker(context: context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.5,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 152),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: const Text(
                    "Update Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "Password Changes",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Enter New Password",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shadowColor: Colors.grey[50],
                  child: Padding(
                    padding:
                    const EdgeInsets.only(right: 8, bottom: 5, left: 8),
                    child: TextFormField(
                      controller: passwordcontroller,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blue,
                          ),
                          onPressed: _toggle,
                        ),
                      ),
                      obscureText: _obscureText,
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Re-Enter New Password",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shadowColor: Colors.grey[50],
                  child: Padding(
                    padding:
                    const EdgeInsets.only(right: 8, bottom: 5, left: 8),
                    child: TextFormField(
                      controller: confirmpasswordcontroller,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: Colors.blue,
                          ),
                          onPressed: _toggle,
                        ),
                      ),
                      obscureText: _obscureText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () async {
                  pickImage();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  pickImageC();
                  Navigator.pop(context);
                 },
              ),
            ],
          ),
        );
      },
    );
  }

  void pickImageC() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) {
      return;
    } else {}

    final imageTemp = File(image.path);

    setState(() => _imageFile = imageTemp);
  }

  void pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    } else {}

    final imageTemp = File(image.path);

    setState(() => _imageFile = imageTemp);
  }
}