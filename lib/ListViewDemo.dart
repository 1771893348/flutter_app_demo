import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'res/LocalData.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Image.network(listData[index]["imageUrl"],width: 50,height: 30,),
              title: Row(
                children: [
                  Text(listData[index]["title"]),
                  Icon(Icons.accessibility)
                ],
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.accessible),
                  Text(listData[index]["content"])
                ],
              ),
              trailing:Image.asset("images/image_beauty.jpg",width: 50,height: 50,)
          );
        }
    );
  }

  List<Widget> getListData() {
    List<Widget> lists = <Widget>[];
    for (var i = 0; i < listData.length; i++) {
      lists.add(ListTile(
          leading: Image.network(listData[i]["imageUrl"]),
          title: Row(
            children: [Text(listData[i]["title"]), Icon(Icons.accessibility)],
          ),
          subtitle: Row(
            children: [Icon(Icons.accessible), Text(listData[i]["content"])],
          )
      ));
    }
    return lists;
  }
}
