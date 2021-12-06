import 'package:flutter/material.dart';

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
                  ),
                  ItemCard('501', color: Colors.yellow),
                  ItemCard('701', color: Colors.yellow),
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
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  var item_name = '';
  var bg_color;
  String tapType = "";

  ItemCard(String name, {Color color = Colors.blue, String type = ""}) {
    item_name = name;
    bg_color = color;
    tapType = type;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        flex: 1,
        child: InkWell(
          child: Card(
            margin: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Container(
              height: 100,
              decoration: BoxDecoration(color: bg_color),
              child: Center(
                child: Text(
                  item_name,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
                Navigator.of(context).pushNamed("SeatPage");
                break;
            }
          },
        ));
  }
}
