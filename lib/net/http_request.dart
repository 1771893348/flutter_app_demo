import 'package:dio/dio.dart';
import 'package:flutter_app_demo/net/http_exception.dart';
import 'package:flutter_app_demo/net/request_api.dart';
import 'package:flutter_app_demo/typedef/function.dart';

const int connectTimeOut =10000;
const int receiveTimeOut = 10000;
const int sendTimeOut = 10000;
class HttpRequest{
  static Dio? _dio;
  static Dio createInstance([bool isJson = false]){
    if(_dio == null){
      var opt = BaseOptions(
        contentType: isJson
            ?Headers.jsonContentType
            :Headers.formUrlEncodedContentType,
        validateStatus: (status){
          return true;
        },
        sendTimeout: sendTimeOut,
        receiveTimeout: receiveTimeOut,
        connectTimeout: connectTimeOut,
        baseUrl: RequestApi.BASE_URL
      );
      _dio = Dio(opt);
    }
    _dio?.options.contentType =
    isJson?Headers.jsonContentType:Headers.formUrlEncodedContentType;
    return _dio!;
  }
  ///请求方法
  static Future request<T>(Method method,String path,{
    Map<String,dynamic>? params,
    dynamic data,
    String? baseUrl,
    bool isJson = false,
    Success? success,
    Fail? fail,
  })async{
      try{
        ///监测网络
        /// 没网谈toast ToastUtil.show("请连接网络")； return;
        Dio dio = createInstance(isJson);
        if(baseUrl != null){
          dio.options.baseUrl = baseUrl;
        }
        Response resp = await dio.request(
            path,
            data: data,
            queryParameters: params,
            options: Options(
                method: _methodValues[method]
            )
        );

      }on DioError catch(e){
          var msg = HttpException.handleException(e);
          if(fail != null){
            fail(msg);
    }
      }
  }
}
///请求类型枚举
enum Method{
  GET,
  POST
}

const _methodValues ={
  Method.GET:"get",
  Method.POST:'post'
};