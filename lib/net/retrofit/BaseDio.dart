import 'package:dio/dio.dart';
import 'package:flutter_app_demo/net/cookie_interceptor.dart';

class BaseDio{
  BaseDio._base();
  static BaseDio getInstance()=>BaseDio._base();

  Dio getDio(){
    final Dio dio =Dio()
        ..options = BaseOptions(
            receiveTimeout: 55000,
            connectTimeout: 66000
        )
        ..interceptors.add(CookieInterceptor())
        ..interceptors.add(LogInterceptor(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
        ));
    return dio;

  }
}