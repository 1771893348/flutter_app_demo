
import 'package:dio/dio.dart';

///
///cookie拦截器
///
class CookieInterceptor extends Interceptor{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {


    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

  }
}