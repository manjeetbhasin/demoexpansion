import 'dart:ffi';

import 'package:flutter/material.dart';

class AgeCalculationdemo extends StatefulWidget {
  const AgeCalculationdemo({Key? key}) : super(key: key);

  @override
  _AgeCalculationdemoState createState() => _AgeCalculationdemoState();
}

class _AgeCalculationdemoState extends State<AgeCalculationdemo> {
  double age = 0.0;
  var Birthdate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[
          TextButton(
              child: Text(Birthdate != null
                  ? Birthdate.toString()
                  : "Select birthdate"),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1920),
                  lastDate: DateTime.now(),
                ).then((value) {
                  setState(() {
                    Birthdate = value!.year;
                    age = (2021 - Birthdate).toDouble();
                  });
                });
              }
              ),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          Text("your age is $age"),
        ]),
      ),
    );
  }
}
