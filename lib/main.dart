import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter/material.dart';
import 'tab.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(new MaterialApp(
    title: 'Flutter',
    home: new MyAPP()
  ));
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new tabApp()
    );
  }
}

