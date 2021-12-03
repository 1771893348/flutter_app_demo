import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_demo/res/LocalData.dart';

class RefreshDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RefreshDemo();
  }
}

class _RefreshDemo extends State {
  ScrollController _control = ScrollController();
  int _pageAddBeforeIndex = 0;
  int _pageIndex = 1;
  bool _haveMore = true;
  @override
  void initState() {
    super.initState();
    _control.addListener((){
      print(_control.position.pixels); //滚动的距离
      print(_control.position.maxScrollExtent); //最大滚动范围
      //当滚动到最底部的时候，加载新的数据
      if (_control.position.pixels ==
          _control.position.maxScrollExtent) {
        print("end===$_haveMore");
        //当还有更多数据的时候才会进行加载新数据
        if (this._haveMore && _pageAddBeforeIndex != _pageIndex) {
          _pageAddBeforeIndex = _pageIndex;
          _getMoreData();
        }
      }
    });
  }
  void  _getMoreData() async{
    print("add start");
    var value = await Future.delayed(Duration(seconds: 5));
    setState(() {
      _pageIndex++;
    });
    print("add more ---$_pageIndex");
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        var value = await Future.delayed(Duration(seconds: 4));
        print("refresh");
        return value;
      },
      child: ListView.builder(
          controller: _control,
          itemCount: listData.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Image.network(
                  listData[index]["imageUrl"],
                  width: 50,
                  height: 30,
                ),
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
                trailing: Image.asset(
                  "images/image_beauty.jpg",
                  width: 50,
                  height: 50,
                ));
          }),
    );
  }
}
