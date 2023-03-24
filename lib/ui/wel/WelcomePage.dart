import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State{
  @override
  Widget build(BuildContext context) {

    print("33333");
    return Center(
      child: Text('wgw'),
    );
  }

  Future<String> sleepTime() async{
    for(int i = 0;i<15;i++){
      print("=====");
      sleep(Duration(milliseconds:1));
    }

    return "wgw";
  }

    @override
    void initState(){
      print("initState");
     sleepTime().then((value){
       print(value);
       Get.offAllNamed("/MyDemo");
     });
      super.initState();
    }

    @override
    void didChaRngeDependencies(){
      print("didChangeDependencies");
      super.didChangeDependencies();
    }

  @override
  didUpdateWidget(WelcomePage oldWidget) {

    print('did update widget');
    super.didUpdateWidget(oldWidget);
  }

    @override
    void deactivate(){
      print("deactivate");
      super.deactivate();
    }

    @override
    void dispose(){
      print("dispose");
      super.dispose();
    }

    @override
    void reassemble(){
      print("reassemble");
      super.reassemble();
    }
}