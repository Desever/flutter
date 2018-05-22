import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter/material.dart';
import 'about/about.dart';
//引入banner
import 'home/homepage.dart';

//引入chart
import 'chart/chart.dart';


void main() {
  debugPaintSizeEnabled = false;
  runApp(new MaterialApp(
      title: 'Flutter',
      home: new tabApp()
  ));
}

class tabApp extends StatefulWidget{
  @override
  tabAppState createState() => new tabAppState();
}

class tabAppState extends State<tabApp> with SingleTickerProviderStateMixin{
  String parBody = '显示菜单的点击';
  TabController controller;
  @override
  void initState(){
    controller=new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new TabBarView(
          controller: controller,
          children: <Widget>[
            new homePage(),
            new about(),
            new chart()
          ]
      ),
      bottomNavigationBar: new Material(
          color:Colors.blue,
          child: new TabBar(
              controller: controller,
              tabs: <Widget>[
                new Tab(
                  text: "首页",
                  icon: new Icon(Icons.home),
                ),
                new Tab(
                  text: "关于",
                  icon: new Icon(Icons.message),
                ),
                new Tab(
                  text: "统计",
                  icon: new Icon(Icons.message),
                )
              ]
          )
      ),
    );
  }
}

