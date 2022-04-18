import 'package:get/get.dart';

class demomodel
{
  RxString ans = "0".obs;

  void sum(String t1, String t2) {

    double a = double.parse(t1);
    double b = double.parse(t2);

    double c = a+b ;
    ans.value = c.toString();

  }

}