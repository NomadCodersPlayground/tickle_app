import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/model/article_retrieve_response_model.dart';
import 'package:tech_blog_search_app/domain/repository/article_repository.dart';

@Singleton(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApi api;

  ArticleRepositoryImpl({required this.api});

  @override
  Future<ArticleRetrieveResponseModel> retrieve({
    required ArticleRequestParamsModel params,
  }) {
    return api.retrieve(params: params);
  }
}
