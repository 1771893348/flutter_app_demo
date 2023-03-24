
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
  
}

class LoginState extends State{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText:'用户名',
                  hintText: "请输入用户名"
              ),
              onChanged: (v){
                print("text change");
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText:'密码',
                  hintText: "请输入密码"
              ),
              onChanged: (v){
                print("TextField change");
              },
            )

          ],
        ),
      ),
    );
  }
 
  
}