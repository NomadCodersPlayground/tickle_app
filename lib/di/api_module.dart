import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get dio => Dio();

  @singleton
  String get baseUrl => "https://4eb40aa8-ff9f-44ce-b48d-a8a17c86da7c.mock.pstmn.io";

  @singleton
  ArticleApi get articleApi => ArticleApi(dio, baseUrl: baseUrl);
}