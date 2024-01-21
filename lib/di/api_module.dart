import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';
import 'package:tech_blog_search_app/di/di_setup.dart';
import 'package:tech_blog_search_app/dio/article_interceptor.dart';

@module
abstract class ApiModule {
  @singleton
  Interceptor get articleInterceptor => ArticleInterceptor();

  @Named("articleDio")
  @singleton
  Dio get dio => Dio()..interceptors.add(articleInterceptor);

  @Named("baseUrl")
  String get baseUrl =>
      "https://4eb40aa8-ff9f-44ce-b48d-a8a17c86da7c.mock.pstmn.io";

  @singleton
  ArticleApi articleApi(
    @Named("articleDio") Dio dio, {
    @Named("baseUrl") required String baseUrl,
  }) =>
      ArticleApi(dio, baseUrl: baseUrl);
}
