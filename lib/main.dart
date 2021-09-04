import 'package:flutter/material.dart';

import 'package:task11_app/rover.dart';
import 'package:task11_app/bmw.dart';
import 'package:task11_app/mec.dart';
import 'package:task11_app/audi.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cars'),
        backgroundColor: Colors.blueAccent.shade400,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 20.0),
        Text(
          'Select your choice',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20.0),
        Expanded(
          child: Container(
            child: ListView(
              children: [
                bmw(),
                SizedBox(
                  height: 10.0,
                ),
                audi(),
                SizedBox(
                  height: 20.0,
                ),
                rover(),
                SizedBox(
                  height: 20.0,
                ),
                mec(),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
