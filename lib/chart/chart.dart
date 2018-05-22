import 'package:flutter/material.dart';
//api模块
import '../public/api/api.dart';
//硬件模块
import '../public/native/native.dart';
//图表模块
import 'package:charts_flutter/flutter.dart' as charts;

class chart extends StatefulWidget{
  @override
  chartState createState() {
    return new chartState();
  }
}
class chartState extends State<chart> {

  //api
  api thisApi=null;

  //native
  native thisNative=null;


  chartState(){

    //实例化api
    this.thisApi=new api();

    //实例化native
    this.thisNative=new native();
  }

  @override
  Widget build(BuildContext context){
    //获取数据
    this.getData();
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('图表'),
        )
    );
  }

  @override
  getData() async{
    var url = "test.php";
    var getRes=await this.thisApi.getData(url);
    if(getRes['code']==1){
      this.thisNative.showLongMessage(getRes['msg']);
    }else{
      this.thisNative.showLongMessage(getRes['msg']);
    }
  }


}