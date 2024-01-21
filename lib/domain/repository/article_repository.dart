import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/model/article_retrieve_response_model.dart';

abstract interface class ArticleRepository {
  Future<ArticleRetrieveResponseModel> retrieve({
    required ArticleRequestParamsModel params,
  });
}
