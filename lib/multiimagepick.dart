
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class multiimagepick extends StatefulWidget {
  const multiimagepick({Key? key}) : super(key: key);
  @override
  _multiimagepickState createState() => _multiimagepickState();
}

class _multiimagepickState extends State<multiimagepick> {
  final ImagePicker _picker = ImagePicker();

  List<XFile> images = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                images = (await _picker.pickMultiImage())!;
                setState(() {
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: images.length > 0
          ? GridView.builder(
        itemCount: images.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Image.file(File(images[index].path));
        },
      )
          : Center(child: Text("No Image Found",style: TextStyle(fontSize: 22),)),
    );
  }
}


