import 'package:flutter/material.dart';
//引入loading
import '../.././public/loading.dart';
class list extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child:new GestureDetector(
        child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Text(
                        '标题',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.00
                        ),
                      ),
                    ),
                    new Text(
                      '内容内容内容内容内容内容内容内容内容内容',
                      style: new TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15.00
                      ),
                    ),
                  ],
                ),
              ),
              new Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              new Text('41'),
            ]
        ),
        onTap: () {
          showDialog(
            context: context,
            child: new showLoading()
          );
        },
      ),

    );

  }
}