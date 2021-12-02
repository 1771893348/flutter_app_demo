import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/GridViewDemo.dart';

import 'ListViewDemo.dart';
import 'StreamDemo.dart';
class SeatPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SeatPage();
  }

}
class _SeatPage extends State with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("座位"),
        bottom: TabBar(
          controller: tabController,
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
            )
          ],
        ),
    );
  }

}