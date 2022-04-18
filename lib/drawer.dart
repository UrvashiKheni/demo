import 'package:demo/drawerfirst.dart';
import 'package:demo/drawersecond.dart';
import 'package:demo/drawerthird.dart';
import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {

  List<Widget> list = [drawerfirst(), drawersecond(), drawerthird()];

  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: list[cnt],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/ebs6ftYUkOKlDY0M174OpvargwbDyHUVAnO_G5aE0dL5GBQKCtfh3adN5H3ZMThXogDi=s180-rw"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://play-lh.googleusercontent.com/ebs6ftYUkOKlDY0M174OpvargwbDyHUVAnO_G5aE0dL5GBQKCtfh3adN5H3ZMThXogDi=s180-rw"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://play-lh.googleusercontent.com/ebs6ftYUkOKlDY0M174OpvargwbDyHUVAnO_G5aE0dL5GBQKCtfh3adN5H3ZMThXogDi=s180-rw"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://play-lh.googleusercontent.com/ebs6ftYUkOKlDY0M174OpvargwbDyHUVAnO_G5aE0dL5GBQKCtfh3adN5H3ZMThXogDi=s180-rw"),
                  ),
                ],
                accountName: Text("ABC"),
                accountEmail: Text("abc@gmail.com")),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("First"),
              onTap: () {
                Navigator.pop(context);
                cnt = 0;
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("Second"),
              onTap: () {
                Navigator.pop(context);
                cnt = 1;
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("Third"),
              onTap: () {
                Navigator.pop(context);
                cnt = 2;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
