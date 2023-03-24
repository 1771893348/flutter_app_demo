import 'package:flutter/material.dart';
import 'package:flutter_app_demo/SeatPage.dart';
import 'package:flutter_app_demo/blues/FlutterBlueApp.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'MainPage.dart';
import 'MePage.dart';
import 'NetDartPage.dart';
import 'blues/BlueIcon.dart';

class MyDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDemo();
  }
}

class _MyDemo extends State {
  var pageList = [MainPage(),NetDartPage(), MePage()];
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          "SeatPage":(context)=>SeatPage()
        },
        title: 'wgw',
        home: Scaffold(
          appBar: AppBar(
            title: Text('夺镖'),
            actions: [
              Container(
                width:20,
                height:20,
                child: BlueIcon(()=>{

                }),
              ),
              IconButton(onPressed: ()=>{

              }, icon: Icon(Icons.add))
            ],
          ),
          body: pageList[pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: '联系'),
              BottomNavigationBarItem(icon:Icon(Icons.http),label: '网络'),
              BottomNavigationBarItem(icon: Icon(Icons.male), label: '我'),
            ],
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
              print("tap:$index");
            },
          ),
        ),
      navigatorObservers: [FlutterSmartDialog.observer],
        builder: FlutterSmartDialog.init(),
    );
  }
}
