import 'package:get/get.dart';

class CounterControler extends GetxController{
  var counter_num=0.obs;
  var user_name = ''.obs;

  void addCounter(){
    counter_num++;
  }

  void setUserName(String name){
    this.user_name.value = name;
  }
}