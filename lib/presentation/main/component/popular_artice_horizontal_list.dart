import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

class PopularArticleHorizontalList extends StatelessWidget {
  final String title;
  final List<ArticleContentModel> articles;
  final EdgeInsetsGeometry? margin;

  const PopularArticleHorizontalList({
    Key? key,
    required this.title,
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
            itemBuilder: (_, index) => _article(articles[index]),
            separatorBuilder: (_, __) => SizedBox(width: 16.w),
            itemCount: articles.length,
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 22.sp,
      ),
    );
  }

  Widget _viewAllArticlesButton() {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => context.push("/search_result"),
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

  Widget _article(ArticleContentModel model) {
    return AspectRatio(
      aspectRatio: 118 / 172,
      child: Column(
        children: [
          Container(
            width: 118.w,
            height: 118.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://miro.medium.com/v2/resize:fit:1400/1*29NeeIGT0BElEBNfzE_VlQ.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                model.title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
