import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/intefaces/IButtonListener.dart';

class CommonButton extends StatelessWidget{

  late Widget child=Text("点击");
  late IButtonListener? mListener;

  CommonButton({ Key? key ,Widget? v, IButtonListener? iButtonListener}){
    if(null == v){
      child = Text("点击");
    }else{
      child = v;
    }
    mListener = iButtonListener;
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ()=>{
        if(null != mListener){
          mListener!.onPress()
        }
    }
    , child: child
    );
  }

}