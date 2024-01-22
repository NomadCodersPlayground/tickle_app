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
  final ArticleRepository repository;
  late final SortOption sortOption;
  FetchState<List<ArticleContentModel>> state = FetchState();

  ArticleListViewModel({
    required this.repository,
    @factoryParam required ArticleListViewParams? params,
  }) {
    sortOption = params?.sortOption ?? SortOption.MOST_VIEWS;
    if (params?.articles.isNotEmpty ?? false) {
      state = state.copyWith(data: params!.articles);
      return;
    }
    fetchArticles(keyword: params?.searchKeyword);
  }

  Future<void> fetchArticles({String? keyword}) async {
    try {
      state = state.copyWith(isLoading: true);
      notifyListeners();
      final response = await repository.retrieve(
        params: ArticleRequestParamsModel(keywords: keyword),
      );
      state = state.copyWith(
        data: response.content,
        isLoading: false,
      );
      notifyListeners();
    } catch (e) {}
  }
}
