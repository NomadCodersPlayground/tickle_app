import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

class PopularArticleListCard extends StatelessWidget {
  final ArticleContentModel article;
  final void Function() onTap;

  const PopularArticleListCard({
    super.key,
    required this.article,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 118 / 172,
        child: Column(
          children: [
            Container(
              width: 118.w,
              height: 118.w,
              decoration: BoxDecoration(
                image: article.mainImageUrl != null
                    ? DecorationImage(
                        image: NetworkImage(
                          article.mainImageUrl!,
                        ),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  article.title,
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
      ),
    );
  }
}
