import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
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
      body: ListView.separated(
        itemCount: viewModel.state.data!.length,
        itemBuilder: (_, index) => ArticleListCard(
          title: viewModel.state.data![index].title,
          content: viewModel.state.data![index].description,
          imageUrl:
          viewModel.state.data![index].mainImageUrl,
        ),
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
