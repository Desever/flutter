import 'package:flutter/material.dart';

//引入banner
import 'component/banner.dart';

//引入banner
import 'component/list.dart';

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("首页"),
      ),
      body:new Container(
        child: new ListView(children: <Widget>[
            new banner(),
            new list(),
            new list(),
            new list()
          ]
        )
      )
    );
  }
}