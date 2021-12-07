import 'package:flutter/material.dart';
import 'package:flutter_app_demo/intefaces/IMyListener.dart';

import 'itemtest/ItemWidget1.dart';
import 'itemtest/ItemWidget2.dart';
class InterfaceDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InterfaceDemo();
  }

}

class _InterfaceDemo extends State{
  // List<IMyListener> list = List();
  Map<String,IMyListener> map = Map();
  @override
  void initState(){
    map["ItemWidget1"] = ItemWidget1();
    map["ItemWidget2"] = ItemWidget2();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          map["ItemWidget1"] as ItemWidget1,
          map["ItemWidget2"] as ItemWidget2,
          Center(
            child: InkWell(
              child: Text("Click it"),
              onTap: (){
                map.forEach((key, value) {
                  value.listenerData("wgw:$key");
                });
              },
            ),
          )

        ],
      ),
    );
  }

}