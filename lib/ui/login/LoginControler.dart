
import 'package:get/get.dart';

class LoginControler extends GetxController{

  var name= 'wgw'.obs;
  var password = ''.obs;

  void setUserName(var n){
    this.name.value = n;
  }
  void setUserPassword(var p){
    this.password.value = p;
  }

}