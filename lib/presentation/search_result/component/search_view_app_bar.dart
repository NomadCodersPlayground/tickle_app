import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewAppBar extends StatelessWidget {
  final Widget title;

  const SearchViewAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 56.w,
      title: title,
      centerTitle: false,
    );
  }
}

