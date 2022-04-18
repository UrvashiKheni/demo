import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datetimepick extends StatefulWidget {
  const datetimepick({Key? key}) : super(key: key);

  @override
  _datetimepickState createState() => _datetimepickState();
}

class _datetimepickState extends State<datetimepick> {

  TextEditingController tdob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
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
                      Text("${tdob.text =' $day/$month/$year'}");
                    });
                  });
                },
                child: Text("Date Picker")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: TimeOfDay.now())
                      .then((value) {
                    print(value);
                  });
                },
                child: Text("Time Picker")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            child: CupertinoDatePicker(
              onDateTimeChanged: (value) {
                print(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
