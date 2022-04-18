import 'package:demo/date.dart';
import 'package:demo/datetimepick.dart';
import 'package:demo/demo1.dart';
import 'package:demo/demo2.dart';
import 'package:demo/demofuturebuilder.dart';
import 'package:demo/drawer.dart';
import 'package:demo/form.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: HomePage(),
  ));
}


class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sec(
      ),
    );
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("hello..!!"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color:  Colors.black,
          child: Text("hello",style: TextStyle(fontSize: 30,color: Colors.amber),),
        ),
      ),
    );
  }
}
class sec extends StatefulWidget {
  const sec({Key? key}) : super(key: key);

  @override
  _secState createState() => _secState();
}

class _secState extends State<sec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row and columan"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Row(
                  children: [
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      color: Colors.cyanAccent,
                    )),
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                    )),
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      color: Colors.amber,
                    )),
                  ],
                )
              )),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.deepPurple,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.blueGrey,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.green,
                      )),
                    ],
                  )
              )),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.amber,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.cyanAccent,
                        child: Column(
                          children: [
                            Expanded(child: Container(
                              alignment:Alignment.center,
                              color: Colors.purple,
                            )),
                            Expanded(child: Container(
                              alignment:Alignment.center,
                              color: Colors.cyanAccent,
                            ))
                          ],
                        ),
                      )),

                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.cyan,
                      )),
                    ],
                  )
              )),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.black45,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.yellow,
                      )),
                    ],
                  )
              )),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(flex: 1,child: Container(
                        alignment: Alignment.center,
                        color: Colors.deepOrange,
                      )),
                      Expanded(flex: 1,child: Container(
                        alignment: Alignment.center,
                        color: Colors.orangeAccent,
                      )),
                      Expanded(flex: 2,child: Container(
                        alignment: Alignment.center,
                        color: Colors.lime,
                        child: Column(
                          children: [
                            Expanded(child: Container(
                              alignment: Alignment.center,
                              color: Colors.pinkAccent,
                            )),
                            Expanded(child: Container(
                              alignment: Alignment.center,
                              color: Colors.blueGrey,
                            )),
                            Expanded(child: Container(
                              alignment: Alignment.center,
                              color: Colors.pinkAccent,
                            )),
                          ],
                        ),
                      )),

                    ],
                  )
              )),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.deepPurple,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.blueGrey,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                      )),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        color: Colors.greenAccent,
                      )),
                    ],
                  )
              )),
        ],
      )


      // body: Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Expanded(flex: 3,child: Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.cyan,
      //     )),
      //     Expanded(flex: 3,child: Container(
      //       width: double.infinity,
      //       height: 100,
      //       color: Colors.deepPurple,
      //     )),
      //     Expanded(flex: 5,child: Container(
      //       width: double.infinity,
      //       height: 20,
      //       color: Colors.deepPurpleAccent,
      //     ))
      //   ],
      // ),
    );
  }
}


