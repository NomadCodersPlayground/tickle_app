import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_blog_search_app/presentation/main/component/popular_article_list_card.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';

class PopularArticleHorizontalList extends StatelessWidget {
  final SortOption sortOption;
  final List<ArticleContentModel> articles;
  final EdgeInsetsGeometry? margin;

  const PopularArticleHorizontalList({
    Key? key,
    required this.sortOption,
    required this.articles,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 12.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _title(),
              _viewAllArticlesButton(),
            ],
          ),
        ),
        Container(
          height: 172.w,
          margin: margin ?? EdgeInsets.only(bottom: 24.w),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => PopularArticleListCard(
              article: articles[index],
            ),
            separatorBuilder: (_, __) => SizedBox(width: 16.w),
            itemCount: articles.length,
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return Text(
      titleFromSortOption(sortOption),
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 22.sp,
      ),
    );
  }

  Widget _viewAllArticlesButton() {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => context.push(
          ArticleListView.path,
          extra: ArticleListViewParams(
            sortOption: sortOption,
            articles: articles,
          ),
        ),
        child: Text(
          "전체보기 >",
          style: TextStyle(
            color: Theme.of(context).colorScheme.outline,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
