import 'package:flutter/material.dart';

import 'textt.dart';

class TextController extends StatefulWidget {
  TextController(this._text);

  final String _text;

  @override
  State<TextController> createState() {
    return TextControllerState();
  }
}

class TextControllerState extends State<TextController> {
  String _text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            child: RaisedButton(
                child: Text("Change Text"),
                color: Theme.of(context).primaryColorLight,
                onPressed: () {
                  setState(() {
                    _text = "Text has changed";
                  });
                }),
          ),
          SizedBox(
            height: 160,
          ),
          Center(child: Textt(_text)),
        ]);
  }

  @override
  void initState() {
    _text = widget._text;
    super.initState();
  }
}
