import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view.dart';

class ArticleListCard extends StatelessWidget {
  final ArticleContentModel article;
  final void Function() onTap;

  const ArticleListCard({
    super.key,
    required this.article,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 375 / 112,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.w),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _title(article.title),
                    SizedBox(height: 4.w),
                    Flexible(
                      child: _content(article.description),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              _thumbnail(article.mainImageUrl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _content(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 12.sp,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _thumbnail(String? imageUrl) {
    return imageUrl != null
        ? Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 56.w,
            height: 56.w,
          )
        : Container();
  }
}
