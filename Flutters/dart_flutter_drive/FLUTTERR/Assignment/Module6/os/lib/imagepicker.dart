import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class My_Image extends StatefulWidget {
  const My_Image({super.key});

  @override
  State<My_Image> createState() => _My_ImageState();
}

class _My_ImageState extends State<My_Image> {
  final ImagePicker _picker = ImagePicker();
  File? image;
  Future getImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    } else {
      final imgtemp = File(image.path);
      setState(() {
        this.image = imgtemp;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(onPressed: () {}, child: Text("Select Image")),
      SizedBox(
          height: 200,
          width: 200,
          child: image == null
              ? Center(child: Text("No Image Found"))
              : Center(
                  child: Image.file(image!),
                ))
    ])));
  }
}
