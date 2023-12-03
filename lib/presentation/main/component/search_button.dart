import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/ui/assets.gen.dart';

class SearchButton extends StatelessWidget {
  final void Function() onTap;

  const SearchButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Assets.images.svg.searchIcon.svg(
          height: 24.w,
          width: 24.w,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.secondary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
