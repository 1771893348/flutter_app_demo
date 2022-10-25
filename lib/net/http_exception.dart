import 'package:dio/dio.dart';

class HttpException{
  static String handleException(DioError error){
    switch(error.type){
      case DioErrorType.cancel:
        return "请求取消";
      case DioErrorType.connectTimeout:
        return "请求取消";
      case DioErrorType.sendTimeout:
        return "请求超时";
      case DioErrorType.receiveTimeout:
        return "响应超时";
      case DioErrorType.response:
        return "连接异常";
      case DioErrorType.other:
        return "连接异常";
      default:
        return "未知错误";
    }
  }
}