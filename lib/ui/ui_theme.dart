import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/ui/color_schemes.g.dart';
import 'package:tech_blog_search_app/ui/fonts.gen.dart';

class UITheme {
  static final lightModeTheme = ThemeData(
    colorScheme: lightColorScheme,
    fontFamily: FontFamily.pretendard,
    appBarTheme: AppBarTheme(
      toolbarHeight: 56.w,
    ),
  );

  static final darkModeTheme = ThemeData(
    colorScheme: darkColorScheme,
    fontFamily: FontFamily.pretendard,
    appBarTheme: AppBarTheme(
      toolbarHeight: 56.w,
    ),
  );
}
