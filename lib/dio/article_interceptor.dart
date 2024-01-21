import 'package:dio/dio.dart';

class ArticleInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.statusCode);
    super.onResponse(response, handler);
  }
}