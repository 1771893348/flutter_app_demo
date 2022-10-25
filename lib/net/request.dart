import 'package:flutter_app_demo/typedef/function.dart';
import 'package:flutter_app_demo/utils/toast_util.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'http_request.dart';

class Request {
  static void get<T>(String path,
      {Map<String, dynamic>? params,
      String? baseUrl,
      bool isJson = false,
      Success<T>? success,
      Fail? fail,
      bool dialog = true
      }) {
    _request(Method.GET, path,
        params: params,
        baseUrl: baseUrl,
        isJson: isJson,
        success: success,
        fail: fail,
        dialog: dialog);
  }
  static void post<T>(String path,
      {Map<String, dynamic>? params,
        String? baseUrl,
        bool isJson = false,
        dynamic data,
        Success<T>? success,
        Fail? fail,
        bool dialog = true
      }) {
    _request(Method.POST, path,
        params: params,
        baseUrl: baseUrl,
        isJson: isJson,
        success: success,
        data: data,
        fail: fail,
        dialog: dialog);
  }
  static void _request<T>(Method method, String path,
      {Map<String, dynamic>? params,
      dynamic data,
      String? baseUrl,
      bool isJson = false,
      bool dialog = true,
      Success<T>? success,
      Fail? fail}) {
    if (dialog) {}
    HttpRequest.request(method, path,
        params: params,
        data: data,
        baseUrl: baseUrl,
        isJson: isJson, success: (data) {
      if (dialog) {
        SmartDialog.dismiss(status: SmartStatus.loading);
      }
      if (success != null) {
        success(data);
      }
    }, fail: (msg) {
      if (dialog) {
        SmartDialog.dismiss(status: SmartStatus.loading);
      }
      if (fail != null) {
        fail(data);
      } else {
        ToastUtil.show(msg);
      }
    });
  }
}
