import 'package:flutter/material.dart';
import 'package:flutter_app_demo/intefaces/IMyListener.dart';

class ItemWidget2 extends StatefulWidget implements IMyListener{
  var widget2 = _Widget2();
  @override
  State<StatefulWidget> createState() {
    return widget2;
  }

  @override
  void listenerData(String value) {
    widget2.showData(value);
  }

}

class _Widget2 extends State{
  String showStr = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("第二个显示$showStr"),
    );
  }
  void showData(String value) {
    setState(() {
      showStr=value;
    });
  }


}