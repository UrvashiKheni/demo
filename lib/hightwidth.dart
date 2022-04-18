import 'package:demo/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hightwidth extends StatefulWidget {
  const hightwidth({Key? key}) : super(key: key);

  @override _hightwidthState createState() => _hightwidthState();
}
class _hightwidthState extends State<hightwidth> {
  @override
  Widget build(BuildContext context) {

    double theight = MediaQuery.of(context).size.height;
    double twidth = MediaQuery.of(context).size.width;

    double appbarheight = kToolbarHeight;
    double statusbarheight = MediaQuery.of(context).padding.top;
    double navbarheight = MediaQuery.of(context).padding.bottom;

    model().mediaQ(context);

    print(theight);
    print(twidth);
    print(appbarheight);
    print(statusbarheight);
    print(navbarheight);
    double bheight = theight - appbarheight - statusbarheight - navbarheight;
    return Scaffold(
      appBar: AppBar() ,
      body: Column(
        children: [
          Container(
            height: bheight*0.33 -20,
            width: twidth,
            color: Colors.redAccent,
            child: Text("Hello",style: TextStyle(fontSize: 10 * (twidth/theight)),),
            margin: EdgeInsets.all(10),
          ),Container(
            height: bheight*0.33,
            width: twidth,
            color: Colors.green,
          ),Container(
            height: bheight*0.34,
            width: twidth,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
