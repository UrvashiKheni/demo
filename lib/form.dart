import 'dart:io';

import 'package:demo/formdetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {

  TextEditingController tname = TextEditingController();
  TextEditingController tcontact = TextEditingController();
  TextEditingController tdob = TextEditingController();
  TextEditingController temail = TextEditingController();
  TextEditingController tpassword = TextEditingController();


  final ImagePicker _picker = ImagePicker();
  String path = "";
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              "fill the detail",
              textAlign: TextAlign.center,
            ),
          ),
          body: Column(
            children: [
              InkWell(
                onTap: () {
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
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: FileImage(File(path)),
                  // child: path == "" ? Icon(Icons.camera_alt) : Image.file(
                  //   File(path),
                  // ),
                ),
              ),
              TextField(
                controller: tname,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
              TextField(
                controller: tcontact,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'phone',
                ),
              ),
              TextField(
                controller: tdob,
                showCursor: true,
                readOnly: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025))
                            .then((value) {
                          print(value);
                          setState(() {
                            DateTime dt = value!;
                            String year = dt.year.toString();
                            String month = dt.month.toString();
                            String day = dt.day.toString();
                            tdob.text =' $day/$month/$year';
                          });
                        });
                      },
                      icon: Icon(Icons.calendar_today)),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
              ),
              TextField(
                controller: temail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: 'Enter your email address',
                  labelText: 'email',
                ),
              ),
              TextField(
                controller: tpassword,
                obscureText: hidepass,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidepass = !hidepass;
                        });
                      },
                      icon: hidepass
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  hintText: 'Enter your password',
                  labelText: 'password',
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("submit"))
            ],
          ),
        ),
        onWillPop: goback);
  }

  Future<bool> goback() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return formdetail();
      },
    ));
    return Future.value();
  }
}
