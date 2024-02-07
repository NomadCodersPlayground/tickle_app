import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/model/article_retrieve_response_model.dart';
import 'package:tech_blog_search_app/domain/repository/article_repository.dart';
import 'package:tech_blog_search_app/utils/fetch_state.dart';

@singleton
class MainViewModel extends ChangeNotifier {
  final ArticleRepository _repository;

  MainViewModel({required ArticleRepository repository}) : _repository = repository {
    _fetch();
  }

  FetchState<
      ({
        ArticleRetrieveResponseModel recent,
        ArticleRetrieveResponseModel today,
        ArticleRetrieveResponseModel weekly,
        ArticleRetrieveResponseModel monthly,
      })> state = FetchState();

  Future<void> _fetch() async {
    state = state.copyWith(isLoading: true);
    notifyListeners();

    try {
      final [recent, today, weekly, monthly] = await Future.wait(
        [
          _repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOption.RECENT),
          ),
          _repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOption.TODAY_VIEWS),
          ),
          _repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOption.WEEKLY_VIEWS),
          ),
          _repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOption.MONTHLY_VIEWS),
          ),
        ],
      );

      state = state.copyWith(
        data: (
          recent: recent,
          today: today,
          weekly: weekly,
          monthly: monthly,
        ),
        isLoading: false,
      );
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
