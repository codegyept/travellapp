import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor
{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler)
  {
   options.headers["Accept-Language"]= "en" ; //TODO: change with easyLocalization
    super.onRequest(options, handler);
  }
}