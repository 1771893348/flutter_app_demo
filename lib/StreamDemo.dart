import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        initialData: "time is now",
        stream: Stream.periodic(Duration(seconds: 1), (value) {
          return DateTime.now().toIso8601String();
        }),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return InkWell(
            child: Text('${snapshot.data}'),
            onTap: (){
              testStream();
            },
          );
        });
  }

  Future<String> getFuture() async{
    print("wwwww");
    var value = await Future.delayed(Duration(seconds: 3));
    return '当前时间为：${DateTime.now()}';
  }
  void testStream(){
    Stream.fromFuture(getFuture())
        .listen((event) {
          print("====$event");
        }).onDone(
            () {
              print("运行结束");
            }
            );
  }
}
