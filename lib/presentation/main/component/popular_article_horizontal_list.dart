import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view.dart';
import 'package:tech_blog_search_app/presentation/main/component/popular_article_list_card.dart';
import 'package:tech_blog_search_app/presentation/main/component/view_all_article_button.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _title(),
              ViewAllArticleButton(
                onTap: () => context.push(
                  ArticleListView.path,
                  extra: ArticleListViewParams(
                    sortOption: sortOption,
                    articles: articles,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
          Container(
            height: 172.w,
            margin: margin ?? EdgeInsets.only(bottom: 24.w),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final article = articles[index];
                return PopularArticleListCard(
                  article: article,
                  onTap: () => context.push(
                    ArticleDetailView.path,
                    extra: article,
                  ),
                );
              },
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemCount: articles.length,
            ),
          ),
        ],
      ),
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
}
