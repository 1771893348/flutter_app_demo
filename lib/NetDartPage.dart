import 'package:flutter/material.dart';
import 'intefaces/IButtonListener.dart';
import 'widget/CommonButton.dart';
import 'package:get/get.dart';
class NetDartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return NetDartPageState();
  }

}

class NetDartPageState extends State with IButtonListener{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          CommonButton(v:Text("wgw"),iButtonListener:this),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
          CommonButton(v:Text("wgw")),
        ],
      ),
    );
  }

  @override
  onLongPress(String tag) {

  }

  @override
  onPress(String tag) {

    Get.snackbar("wgw", "hello every one").show();
  }

}