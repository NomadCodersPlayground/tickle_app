import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/domain/model/article_request_params_model.dart';
import 'package:tech_blog_search_app/domain/model/article_retrieve_response_model.dart';
import 'package:tech_blog_search_app/domain/repository/article_repository.dart';
import 'package:tech_blog_search_app/util/fetch_state.dart';

class MainViewModel extends ChangeNotifier {
  final ArticleRepository repository;

  MainViewModel({required this.repository}) {
    _fetch();
  }
  
  Future<void> _fetch() async {
    try {
      await Future.wait(
        [
          repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOptions.RECENT),
          ),
          repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOptions.WEEKLY_VIEWS),
          ),
          repository.retrieve(
            params: ArticleRequestParamsModel(sortOptions: SortOptions.MONTHLY_VIEWS),
          ),
        ],
      );

    } catch (e) {
      print(e);
    }
  }
}
