import 'package:flutter/material.dart';

import 'textController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),
          ),
          body: TextController("This will change")),
    );
  }
}
