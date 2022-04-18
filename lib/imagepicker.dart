import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  _imagepickerState createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  final ImagePicker _picker = ImagePicker();
  String path = "";
  List<XFile>? imageList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("Select Image"),
                          children: [
                            ListTile(
                              title: Text("Camera"),
                              leading: Icon(Icons.camera),
                              onTap: () async {
                                Navigator.pop(context);
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.camera);

                                path = image!.path;

                                setState(() {});
                              },
                            ),
                            ListTile(
                              title: Text("Gallery"),
                              leading: Icon(Icons.photo),
                              onTap: () async {
                                Navigator.pop(context);
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.gallery);
                                path = image!.path;
                                setState(() {});
                              },
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "Image Picker",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              path == ""
                  ? Container(
                height: 100,
                width: 100,
              )
                  : Image.file(
                  File(path),
                  width: 350, height: 350
              ),
            ],
          )),
    );
  }
}
