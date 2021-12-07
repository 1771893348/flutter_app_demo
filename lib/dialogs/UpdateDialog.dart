import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UpdateDialog extends Dialog {
  String updateContent = "";
  bool isForce = false;

  UpdateDialog({content = "", force = false}) {
    this.updateContent = content;
    this.isForce = force;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color:Colors.green,
            width: 319,
            height: 370,
            child: Stack(
              alignment:AlignmentDirectional.topCenter,
              children: [
                Image.asset(
                  "images/image_beauty.jpg",
                  width: 319,
                  height: 370,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Expanded(flex: 1, child: Text("wgw")),
                    Container(
                      width: 250,
                      height: 42,
                      margin: EdgeInsets.only(bottom: 15),
                      child: ElevatedButton(
                          style: ButtonStyle(),
                          child: Text(
                            '立即更新',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
