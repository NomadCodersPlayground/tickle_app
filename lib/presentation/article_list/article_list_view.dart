import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/component/article_list_card.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({
    super.key,
  });

  static const String path = "/article-list";

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ArticleListViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(titleFromSortOption(viewModel.sortOption)),
      ),
      body: viewModel.state.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: viewModel.state.data!.length,
              itemBuilder: (_, index) {
                final article = viewModel.state.data![index];
                return ArticleListCard(
                  article: article,
                  onTap: () => context.push(
                    ArticleDetailView.path,
                    extra: article,
                  ),
                );
              },
              separatorBuilder: (_, __) => Divider(
                color: Theme.of(context).colorScheme.secondary,
                height: 0,
                thickness: 0,
                indent: 16.w,
                endIndent: 16.w,
              ),
            ),
    );
  }
}
