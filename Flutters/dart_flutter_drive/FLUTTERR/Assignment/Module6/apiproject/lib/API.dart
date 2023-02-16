import 'package:apiproject/APIModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

Future<DataModel?> submitData(String name, String email) async {
  var response = await http.post(
    Uri.https("https://digitalsociety28.000webhostapp.com/", "/add_member.php"),
    body: {"firstname": name, "email": email},
    headers: {'Content-type': 'application/Json', 'Accept': 'application/Json'},
  );

  var data = response.body;

  print(data);

  if (response.statusCode == 201) {
    String responseString = response.body;
    dataModelFromJson(responseString);
  } else {
    return null;
  }
}

class _APIState extends State<API> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  var namevalidator;
  var emailvalidator;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 200,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Name",
          ),
        ),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Email",
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              String name = nameController.text.toString();
              String email = emailController.text.toString();

              DataModel? datamodel = await submitData(name, email);
              setState(() {
                var _dataModel = datamodel;
              });
            },
            child: Text("Save"))
      ],
    ));
  }
}
