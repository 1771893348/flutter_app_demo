
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter{
  Paint _paint = Paint()
  ..color = Colors.blueAccent  //画笔颜色
  ..strokeCap = StrokeCap.round //画笔笔触类型
  ..isAntiAlias = true
  ..style = PaintingStyle.fill
  ..strokeWidth = 5.0;
  Canvas? _canvas=null;
  double width = 300;
  double height = 300;

  @override
  void paint(Canvas canvas, Size size) {
    _canvas = canvas;
    width = size.width;
    height = size.height;
    Offset a = Offset(0,0);
    Offset b = Offset(width,height);
    Offset centerPoint = Offset(width/2,height/2);
    _canvas!.drawLine(a, b, _paint);
    _canvas!.drawCircle(centerPoint, 30, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}