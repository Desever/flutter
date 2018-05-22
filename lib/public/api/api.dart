import 'package:http/http.dart'as http;
import 'dart:convert';
class api{
  api(){

  }
  //get
  getData(String getUrl) async{
    var getRes=http.get(getUrl).then((response) {
        if(response.statusCode==200){
          Map cacheRes=json.decode(response.body);
          //结果数据
          Map getRes=new Map();
          //构建获取成功数据
          if(cacheRes['state']==0){
            getRes["code"]=0;
            getRes["msg"]=cacheRes['msg'];
          }else{
            getRes["code"]=1;
            getRes["msg"]="成功";
            getRes["data"]=cacheRes["data"];
          }
          return getRes;
        }else{
          //构建错误信息
          Map getRes=new Map();
          getRes["code"]=0;
          getRes["msg"]="网络错误";
          return getRes;
        }
    });

    return getRes;
  }
}