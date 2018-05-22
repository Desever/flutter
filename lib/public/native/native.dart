
import 'package:fluttertoast/fluttertoast.dart';

class native{


  native(){


  }

  //显示长时间提示
  void showLongMessage(String message){
    Fluttertoast.showToast(
      msg:message,
      toastLength: Toast.LENGTH_LONG,
    );
  }

}