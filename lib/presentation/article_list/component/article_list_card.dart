import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleListCard extends StatelessWidget {
  final String title;
  final String content;
  final String? imageUrl;

  const ArticleListCard({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 112,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(title),
                  SizedBox(height: 4.w),
                  Flexible(
                    child: _content(content),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            _thumbnail(imageUrl),
          ],
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
