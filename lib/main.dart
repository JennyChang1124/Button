import 'package:flutter/material.dart';

void main() {
  var appTitle = Text('Flutter FlatButton -tutorialkart.com'),
      hiFlutter = Text('Hi,Flutter.\n今天是20220926',
          style: TextStyle(fontSize: 30)
      );

 var appBody=TextButton(
    style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
            return Colors.blue.withOpacity(0.04);
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed))
              return Colors.blue.withOpacity(0.12);
            return null; // Defer to the widget's default.
  },
  ),
  ),
  onPressed: () { },
  child: Text('TextButton'),
  );
  var appBody=TextButtononSurface(
    style: TextButtononSurface.styleFrom(
      primary: Colors.blue,
      onSurface: Colors.red,
    ),
    onPressed: null,
    child: Text('TextButton'),
  );
  var appBar = AppBar(
    title: appTitle,
    backgroundColor:Color(0xff0000ff),
  );
  var app = MaterialApp(
    home: Scaffold(
        appBar: appBar,
        body: appBody,
        backgroundColor:Colors.white
    ),
  );
  runApp(app);
}
