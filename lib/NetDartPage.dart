import 'package:flutter/material.dart';
import 'widget/CommonButton.dart';
class NetDartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return NetDartPageState();
  }

}

class NetDartPageState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          CommonButton(v:Text("wgw")),
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

}