import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/utils/fetch_state.dart';

class ArticleListViewModel extends ChangeNotifier {
  late final SortOption sortOption;
  late FetchState<List<ArticleContentModel>> state;

  ArticleListViewModel({required ArticleListViewParams? params}) {
    sortOption = params?.sortOption ?? SortOption.MOST_VIEWS;
    state = FetchState(data: params?.articles ?? []);
  }
}

