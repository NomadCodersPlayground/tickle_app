import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/model/article_retrieve_response_model.dart';

part 'article_api.g.dart';


@RestApi()
abstract class ArticleApi {
  factory ArticleApi(Dio dio, {required String baseUrl}) = _ArticleApi;

  @GET("/api/v1/articles")
  Future<ArticleRetrieveResponseModel> retrieve({
    @Queries() required ArticleRequestParamsModel params,
  });
}
