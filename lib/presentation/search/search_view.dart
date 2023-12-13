import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/presentation/search/component/search_text_field.dart';
import 'package:tech_blog_search_app/presentation/search/search_view_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  static const path = "/search";

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SearchViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(
          onChanged: viewModel.onTextChanged,
          onSubmitted: (_) async {
            await viewModel.fetchArticles();
            if (!context.mounted) return;

            context.push(
              ArticleListView.path,
              extra: ArticleListViewParams(
                articles: viewModel.fetchState.data!,
              ),
            );
          },
        ),
      ),
      body: Container(),
    );
  }
}
