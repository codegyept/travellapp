import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Accept-Language"] = "en";
    // TODO this header for test because auth screens not connected with apis
    options.headers["Authorization"] =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3JlaGxhdGl1YWUuY29tL2FwaS92MS9jbGllbnQvcmVnaXN0ZXIiLCJpYXQiOjE3MTEyNzc4NTEsImV4cCI6MTcxMTM2NDI1MSwibmJmIjoxNzExMjc3ODUxLCJqdGkiOiIxdzVWWHNxOTNsbE55VllNIiwic3ViIjoiMjkiLCJwcnYiOiI0MWVmYjdiYWQ3ZjZmNjMyZTI0MDViZDNhNzkzYjhhNmJkZWM2Nzc3In0.KbMulI7V-7Uk8D5QRm0TsWo99oImYOAN7NKceb9jeNo";
    super.onRequest(options, handler);
  }
}
