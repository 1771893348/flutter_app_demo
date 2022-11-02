import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/GridViewDemo.dart';
import 'package:flutter_app_demo/InterfaceDemo.dart';
import 'package:flutter_app_demo/MyViewDemo.dart';
import 'package:flutter_app_demo/ui/getxdemo/Counter.dart';

import 'ListViewDemo.dart';
import 'RefreshDemo.dart';
import 'StreamDemo.dart';

class SeatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeatPage();
  }
}

class _SeatPage extends State with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("座位"),
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: [
            Tab(
              icon: Icon(Icons.add_road),
              text: "list",
            ),
            Tab(
              icon: Icon(Icons.account_tree),
              text: "account_tree",
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
              text: "ac_unit",
            ),
            Tab(
              icon: Icon(Icons.account_balance),
              text: "account_balance",
            ),
            Tab(
              icon: Icon(Icons.account_balance),
              text: "myview",
            ),
            Tab(
              icon: Icon(Icons.account_circle_rounded),
              text: "testInterface",
            ),
            Tab(
              icon: Icon(Icons.account_circle_rounded),
              text: "getxDemo",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            child: ListViewDemo(),
          ),
          Center(
            child: GridViewDemo(),
          ),
          Center(
            child: StreamDemo(),
          ),
          Center(
            child: RefreshDemo(),
          ),
          Center(
            child: MyViewDemo(),
          ),
          Center(
            child: InterfaceDemo(),
          ),
          Center(
            child: Counter(),
          )
        ],
      ),
    );
  }
}
