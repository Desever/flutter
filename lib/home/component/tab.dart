import 'package:flutter/material.dart';
class tab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child:new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Image.asset(
            'images/tab1.png',
            width:50.0,
            height:50.0,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'images/tab2.png',
            width:50.0,
            height:50.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}