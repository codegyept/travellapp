import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Accept-Language"] = "en";
    // TODO this header for test because auth screens not connected with apis
    options.headers["Authorization"] =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3JlaGxhdGl1YWUuY29tL2FwaS92MS9jbGllbnQvbG9naW4iLCJpYXQiOjE3MTE0MDMzNjcsImV4cCI6MTcxMTQ4OTc2NywibmJmIjoxNzExNDAzMzY3LCJqdGkiOiI1U2hkeHVOUnBHN0NQSkd5Iiwic3ViIjoiMSIsInBydiI6IjQxZWZiN2JhZDdmNmY2MzJlMjQwNWJkM2E3OTNiOGE2YmRlYzY3NzcifQ.Cos32fihiDFyCAnt4duex9qKm_nlWVMz69inSBqOgZc";
    super.onRequest(options, handler);
  }
}
