
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'demomodel.dart';

class demogetx extends StatelessWidget {

  TextEditingController  t1 = TextEditingController();
  TextEditingController  t2 = TextEditingController();
  demomodel dm = Get.put(demomodel());

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: Text("sum of two value"),
      ),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          ElevatedButton(onPressed: () {
            dm.sum(t1.text,t2.text);
          }, child: Text("submit")),
          Obx(() => Text("${dm.ans}"),)
        ],
      ),
    );
  }
}
