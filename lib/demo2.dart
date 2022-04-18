import 'package:flutter/material.dart';

class demo3 extends StatelessWidget {
  const demo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fourth(),
    );

  }
}

class fourth extends StatefulWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  _fourthState createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ludo"),
      ),
     body:Column(
       children: [
         Expanded(
             child: Container(
               color: Colors.white,
               child: Row(
                 children: [
                   Expanded(flex: 2,child: Container(
                     color:Colors.red ,
                     child: Container(
                       margin: EdgeInsets.all(20),
                       color: Colors.white,
                       child: Column(
                         children: [
                           Expanded(child: Container(
                             color: Colors.white,
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                             child: Row(
                               children: [
                                 Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                                   color: Colors.red,
                                 )),
                                 Expanded(flex: 1,child: Container(
                                   margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                                   color: Colors.red,
                                 )),
                               ],
                             ),
                           )),
                           Expanded(child: Container(
                             margin: EdgeInsets.only(top: 2,bottom: 2),
                             color: Colors.white,
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                             child: Row(
                               children: [
                                 Expanded(child: Container(
                                   margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                                   color: Colors.red,
                                 )),
                                 Expanded(flex: 1,child: Container(
                                   margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                                   color: Colors.red,
                                 )),
                               ],
                             ),
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                           )),
                         ],
                       ),
                     ),
                   )),
                   Expanded(child: Container(
                     //margin: EdgeInsets.only(left: 10,right: 10),
                     color:Colors.white,
                   )),
                   Expanded(flex: 2,child: Container(
                     color:Colors.yellow ,
                     child: Container(
                       margin: EdgeInsets.all(20),
                       color: Colors.white,
                       child: Column(
                         children: [
                           Expanded(child: Container(
                             color: Colors.white,
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                             child: Row(
                               children: [
                                 Expanded(child: Container(
                                   margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                                   color: Colors.yellow,
                                 )),
                                 Expanded(flex: 1,child: Container(
                                   margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                                   color: Colors.yellow,
                                 )),
                               ],
                             ),
                           )),
                           Expanded(child: Container(
                            margin: EdgeInsets.only(top: 2,bottom: 2),
                             color: Colors.white,
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                             child: Row(
                               children: [
                                 Expanded(child: Container(
                                   margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                                   color: Colors.yellow,
                                 )),
                                 Expanded(flex: 1,child: Container(
                                   margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                                   color: Colors.yellow,
                                 )),
                               ],
                             ),
                           )),
                           Expanded(child: Container(
                             color: Colors.white,
                           )),
                         ],
                       ),
                     ),
                   ))
                 ],
               ),
         )),
         Expanded(child: Container(
           color: Colors.white,

         )),
         Expanded(child: Container(
           color: Colors.white,
           child: Row(
             children: [
               Expanded(flex: 2,child: Container(
                 color:Colors.indigo ,
                 child: Container(
                   margin: EdgeInsets.all(20),
                   color: Colors.white,
                   child: Column(
                     children: [
                       Expanded(child: Container(
                         color: Colors.white,
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                         child: Row(
                           children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                               color: Colors.indigo,
                             )),
                             Expanded(flex: 1,child: Container(
                               margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                               color: Colors.indigo,
                             )),
                           ],
                         ),
                       )),
                       Expanded(child: Container(
                         //margin: EdgeInsets.only(top: 2,bottom: 2),
                         color: Colors.white,
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                         child: Row(
                           children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                               color: Colors.indigo,
                             )),
                             Expanded(flex: 1,child: Container(
                               margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                               color: Colors.indigo,
                             )),
                           ],
                         ),
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                       )),
                     ],
                   ),
                 ),
               )),
               Expanded(child: Container(
                 //margin: EdgeInsets.only(left: 10,right: 10),
                 color:Colors.white ,

               )),
               Expanded(flex: 2,child: Container(
                 color:Colors.green ,
                 child: Container(
                   margin: EdgeInsets.all(20),
                   color: Colors.white,
                   child: Column(
                     children: [
                       Expanded(child: Container(
                         color: Colors.white,
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                         child: Row(
                           children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                               color: Colors.green,
                             )),
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                               color: Colors.green,
                             )),
                           ],
                         ),
                       )),
                       Expanded(child: Container(
                         margin: EdgeInsets.only(top: 2,bottom: 2),
                         color: Colors.white,
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                         child: Row(
                           children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(23, 0, 13, 0),
                               color: Colors.green,
                             )),
                             Expanded(child: Container(
                               margin: EdgeInsets.fromLTRB(13, 0, 23,0),
                               color: Colors.green,
                             )),
                           ],
                         ),
                       )),
                       Expanded(child: Container(
                         color: Colors.white,
                       )),
                     ],
                   ),
                 ),
               ))
             ],
           ),
         )),
         Expanded(child: Container(
           color: Colors.white,
         )),
         Expanded(child: Container(
           color: Colors.white,
         )),
       ],
     ),
    );
  }
}
