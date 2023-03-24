import 'dart:ui';

import 'package:permission_handler/permission_handler.dart';

class PermissionGet{
  static checkPermission(
      {required List<Permission> permissionList,
      VoidCallback? onSuccess,
      VoidCallback? onFail,
      VoidCallback? goSetting}) async{
    List<Permission> newPermissionList =[];
    for(Permission permission in permissionList){
      PermissionStatus status = await permission.status;
      if(!status.isGranted){
        newPermissionList.add(permission);
      }
    }
    if(newPermissionList.isEmpty){
      PermissionStatus permissionStatus = await requestPermission(newPermissionList);
      switch(permissionStatus){
        case PermissionStatus.denied:
          if(onFail != null) onFail();
          break;
        case PermissionStatus.granted:
          if(onSuccess != null) onSuccess();
          break;
        case PermissionStatus.restricted:
        case PermissionStatus.limited:
        case PermissionStatus.permanentlyDenied:
        goSetting!=null?goSetting():openAppSettings();
        break;
      }
    }else{
      if(onSuccess!=null) onSuccess();
    }
  }

  static requestPermission(List<Permission> newPermissionList) async{
    Map<Permission,PermissionStatus> statuses = await newPermissionList.request();
    PermissionStatus currentPermissionStatus = PermissionStatus.granted;
    statuses.forEach((key, value) {
      if(!value.isGranted){
        currentPermissionStatus = value;
        return;
      }
    });
    return currentPermissionStatus;
  }

  static checkLocationAlways(
      {VoidCallback? onSuccess,
        VoidCallback? onFailed,
        VoidCallback? goSetting}) async {
    ///获取前置状态
    /// Android没有这一步 ios会先访问这个再访问其他的
    PermissionStatus status = PermissionStatus.granted;
    status = await _checkSinglePermission(Permission.locationWhenInUse);

    ///获取第二个状态
    PermissionStatus status2 = PermissionStatus.denied;

    ///如果前置状态为成功才能执行获取第二个状态
    if (status.isGranted) {
      status2 = await _checkSinglePermission(Permission.locationAlways);
    }

    ///如果两个都成功那么就返回成功
    if (status.isGranted && status2.isGranted) {
      if(onSuccess != null)  onSuccess();

      ///如果有一个拒绝那么就失败了
    } else if (status.isDenied || status2.isDenied) {
      if(onFailed != null) onFailed();
    } else {
      goSetting != null ? goSetting() : await openAppSettings();
    }
  }

  static _checkSinglePermission(Permission permission) async {
    ///获取当前状态
    PermissionStatus status = await permission.status;
    PermissionStatus currentPermissionStatus = PermissionStatus.granted;

    ///如果它状态不是允许那么就去获取
    if (!status.isGranted) {
      currentPermissionStatus = await requestPermission([permission]);
    }

    ///返回最终状态
    return currentPermissionStatus;
  }

}