import 'package:flutter/material.dart';

class showLoading extends StatefulWidget{
  showLoading();

  @override
  showLoadingState createState()=>new showLoadingState();
}

class showLoadingState extends State<showLoading>{
  @override
  void initState() {
    super.initState();
  }
  @override
    Widget build(BuildContext context) {
      return new Center(
        child: new CircularProgressIndicator(),//获取控件实例
      );
  }

}