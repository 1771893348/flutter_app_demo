
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BlueIcon extends StatelessWidget{
  var onpress;
  BlueIcon(this.onpress);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      child: Center(
        child:  StreamBuilder<BluetoothState>(
            stream: FlutterBluePlus.instance.state,
            initialData: BluetoothState.unknown,
            builder: (c, snapshot) {
              final state = snapshot.data;
              if (state == BluetoothState.on) {
                return IconButton(onPressed: onpress, icon: Icon(
                    Icons.access_alarm_rounded
                ));
              }
              return IconButton(onPressed: onpress, icon: Icon(
                  Icons.accessibility_new
              ));
            }),
      ),
    );
  }

}