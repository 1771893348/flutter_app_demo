import 'package:flutter/material.dart';

import 'myview/MyPainter.dart';

class MyViewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyViewDemo();
  }

}

class _MyViewDemo extends State{
  double size = 100;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(Duration(milliseconds: 100),(value){
        if(size>200){
          size = 100;
        }
        size++;
        return size;
      }),
      builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
        return Center(
          child: CustomPaint(
            size: Size(size,size),
            painter: MyPainter(),
          ),
        );
      },

    );
  }

}