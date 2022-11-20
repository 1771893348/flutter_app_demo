import 'package:flutter/material.dart';
import 'package:flutter_app_demo/dialogs/UpdateDialog.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("高分赛"),
              Row(
                children: [
                  ItemCard('五轮高分赛', color: Colors.green),
                  ItemCard('八轮高分赛', color: Colors.green)
                ],
              ),
              Text("01赛"),
              Row(
                children: [
                  ItemCard(
                    '301',
                    color: Colors.yellow,
                    textColor: Colors.blue,
                  ),
                  ItemCard('501', color: Colors.yellow,textColor: Colors.blue,),
                  ItemCard('701', color: Colors.yellow,textColor: Colors.blue,),
                ],
              ),
              Text("米老鼠"),
              Row(
                children: [
                  ItemCard('标准米老鼠', color: Colors.blue),
                  ItemCard('随机米老鼠', color: Colors.blue)
                ],
              ),
              Text("助兴游戏"),
              Row(
                children: [
                  ItemCard('幸运大转盘', color: Colors.brown),
                  ItemCard('扎气球', color: Colors.brown)
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('go to add dilog');
            showDialog(
                context: context,
                builder: (context) {
                  return WillPopScope(
                    child: UpdateDialog(content: "wgw", force: true),
                    onWillPop: _onWillPop,
                  );
                });
          },
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return false;
  }
}

class ItemCard extends StatelessWidget {
  var item_name = '';
  var bg_color;
  var text_color;
  String tapType = "";

  ItemCard(String name, {Color color = Colors.blue, Color textColor = Colors.white,String type = ""}) {
    item_name = name;
    bg_color = color;
    tapType = type;
    text_color = textColor;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        flex: 1,
        child: InkWell(
          child: Card(
            color: bg_color,
            margin: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            child: Container(
              height: 100,
              // decoration: BoxDecoration(color: bg_color),
              child: Center(
                child: Text(
                  item_name,
                  style: TextStyle(color: text_color),
                ),
              ),
            ),
          ),
          onTap: () {
            switch (tapType) {
              case "seat":
                // Navigator.of(context).pushNamed("SeatPage");
                break;
              default:
                // Navigator.of(context).pushNamed("SeatPage");
                Get.toNamed("/SeatPage");
                break;
            }
          },
        ));
  }
}
