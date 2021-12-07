import 'package:flutter/material.dart';
import 'package:flutter_app_demo/intefaces/IMyListener.dart';

class ItemWidget1 extends StatefulWidget implements IMyListener{
  var widget1 = _Widget1();
  @override
  State<StatefulWidget> createState() {
    return widget1;
  }

  void changeData(){
    widget1.showStr;
  }

  @override
  void listenerData(String value) {
    widget1.showData(value);
  }
}

class _Widget1 extends State {
  String showStr = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("第一个显示$showStr"),
    );
  }

  void showData(String value) {
    setState(() {
      showStr=value;
    });
  }

}