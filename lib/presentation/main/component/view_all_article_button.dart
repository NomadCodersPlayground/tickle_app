import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewAllArticleButton extends StatelessWidget {
  final void Function() onTap;

  const ViewAllArticleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "전체보기 >",
        style: TextStyle(
          color: Theme.of(context).colorScheme.outline,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
