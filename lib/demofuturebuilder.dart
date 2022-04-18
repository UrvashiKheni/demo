
import 'package:flutter/material.dart';
import 'package:getwidget/components/animation/gf_animation.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_animation_type.dart';
import 'package:getwidget/types/gf_loader_type.dart';

class demofuturebuilder extends StatefulWidget {
  const demofuturebuilder({Key? key}) : super(key: key);

  @override
  _demofuturebuilderState createState() => _demofuturebuilderState();
}

class _demofuturebuilderState extends State<demofuturebuilder>  with SingleTickerProviderStateMixin {


  late AnimationController controller;
  late Animation<double> animation;
  double _fontSize = 30;

  Future<List<String>> getmovies() async {
    await Future.delayed(Duration(seconds: 5));
    List<String> movies = ["FF1", "FF2", "FF3"];

    return movies;
  }

  Future<List<String>> getseries() async {
    await Future.delayed(Duration(seconds: 8));
    List<String> series = ["SS1", "SS2", "SS3"];

    return series;
  }

  Future<String> getconnection() async  {
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.repeat();
    String message = "connected";
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getconnection(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done)
                  {
                    if (snapshot.hasData)
                    {
                      String message = snapshot.data.toString();
                      return Center(child: Text("${message}",style: TextStyle(fontSize: 24),));
                    }
                    else {
                      return Center(
                        child: Text("connection failed",style: TextStyle(fontSize: 24),),
                      );
                    }
                  }
                  return Center(
                    child: GFAnimation(
                      width: 50,
                      changedWidth: 100,
                      height: 50,
                      changedHeight: 100,
                      activeColor: Colors.transparent,
                      color: Colors.transparent,
                      fontSize: _fontSize,
                      type: GFAnimationType.container,
                      child: Image.asset(
                        'images/1.jpg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  );

                }),
          ),
          Expanded(
            child: FutureBuilder(
                future: getmovies(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List<String> list = snapshot.data as List<String>;
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return  Container(
                              child: Center(child: Text("${list[index]}",style: TextStyle(fontSize: 24),)));
                        },
                      );
                    }
                    else {
                      return Text("no data found");
                    }
                  }
                  return Center(
                    child: GFLoader(
                        type:GFLoaderType.circle
                    ),
                  );
                }),
          ),
          Expanded(
            child: FutureBuilder(
                future: getseries(),
                builder: (context, snapshot)
                {
                  if (snapshot.connectionState == ConnectionState.done)
                  {
                    if (snapshot.hasData)
                    {
                      List<String> list = snapshot.data as List<String>;
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index)
                        {
                          return Container(
                              child: Center(child: Text("${list[index]}",style: TextStyle(fontSize: 24),)));

                        },
                      );
                    }
                    else
                    {
                      return Center(
                        child: Text("no data found"),
                      );
                    }
                  }

                  return Center(
                    child: GFLoader(
                        type:GFLoaderType.circle
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}
