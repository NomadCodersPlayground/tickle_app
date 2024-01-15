import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/repository/article_repository.dart';
import 'package:tech_blog_search_app/utils/fetch/fetch_state.dart';

@injectable
class SearchViewModel extends ChangeNotifier {
  final ArticleRepository repository;
  SearchViewModel({required this.repository});

  String? searchKeyword;
  FetchState<List<ArticleContentModel>> fetchState = FetchState();

  void onTextChanged(String value) {
    searchKeyword = value;
  }

  Future<void> fetchArticles() async {
    try {
      final response = await repository.retrieve(
        params: ArticleRequestParamsModel(keywords: searchKeyword),
      );
      fetchState = fetchState.copyWith(data: response.content);
    } catch (e) {}
  }
}
