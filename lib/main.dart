import 'package:flutter/material.dart';
import 'package:jsonfinal/sample_model.dart';
import 'sample_services.dart';

void main() {
  // first push 19 feb
  runApp(new MaterialApp(
    home: Home(),
  ));
  loadStudent();
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<Sample>(
          // future: getPost(),
            builder: (context, snapshot) {
              return Text("");
            }
        )
    );
  }
}


