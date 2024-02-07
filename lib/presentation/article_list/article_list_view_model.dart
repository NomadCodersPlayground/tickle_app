import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/repository/article_repository.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/utils/fetch_state.dart';

@injectable
class ArticleListViewModel extends ChangeNotifier {
  final ArticleRepository _repository;
  late final SortOption _sortOption;
  FetchState<List<ArticleContentModel>> _state = FetchState();

  SortOption get sortOption => _sortOption;

  FetchState<List<ArticleContentModel>> get state => _state;

  ArticleListViewModel({
    required ArticleRepository repository,
    @factoryParam required ArticleListViewParams? params,
  }) : _repository = repository {
    _sortOption = params?.sortOption ?? SortOption.MOST_VIEWS;
    if (params?.articles.isNotEmpty ?? false) {
      _state = _state.copyWith(data: params!.articles);
      return;
    }
    fetchArticles(keyword: params?.searchKeyword);
  }

  Future<void> fetchArticles({String? keyword}) async {
    try {
      _state = _state.copyWith(isLoading: true);
      notifyListeners();
      final response = await _repository.retrieve(
        params: ArticleRequestParamsModel(keywords: keyword),
      );
      _state = _state.copyWith(
        data: response.content,
        isLoading: false,
      );
      notifyListeners();
    } catch (e) {}
  }
}
