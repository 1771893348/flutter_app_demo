import 'package:flutter/material.dart';
import 'package:flutter_app_demo/SeatPage.dart';
import 'MainPage.dart';
import 'MePage.dart';

class MyDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDemo();
  }
}

class _MyDemo extends State {
  var pageList = [MainPage(), MePage()];
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
            title: Text('huddd'),
          ),
          body: pageList[pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: '联系'),
              BottomNavigationBarItem(icon: Icon(Icons.male), label: '我'),
            ],
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
              print("tap:$index");
            },
          ),
        ));
  }
}
