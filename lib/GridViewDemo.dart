import 'package:flutter/material.dart';
import 'res/LocalData.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: listData.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Row(
                children: [
                  Text(listData[index]["title"],overflow: TextOverflow.ellipsis,),
                  Icon(Icons.accessibility)
                ],
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.accessible),
                  Text(listData[index]["content"],overflow: TextOverflow.ellipsis,)
                ],
              ));
        });
  }
}
