import 'package:dio/dio.dart';

class ArticleInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print(options.uri);
    print(options.queryParameters);

    super.onRequest(options, handler);
  }
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.statusCode);
    super.onResponse(response, handler);
  }
}