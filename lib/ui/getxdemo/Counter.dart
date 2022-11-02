import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/getxdemo/CounterControler.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final controler = Get.put(CounterControler());
    return Container(
      child: Center(
        child: Column(
          children: [
            Obx((){
              return Row(
                children: [
                    Text(
                    controler.counter_num.string,
                  ),
                  Icon(
                    Icons.ac_unit_sharp
                  ),
                  Text(
                    controler.user_name.toString()
                  )
                ],
              );
            }),
            ElevatedButton(
            onPressed: (){
              controler.addCounter();
              if(controler.counter_num%2 == 0){
                controler.setUserName("wgw");
              }else{
                controler.setUserName("No one");
              }
            },
            child: Text("add"))
          ],
        ),
      ),
    );
  }

}