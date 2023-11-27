import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/ui/color_schemes.g.dart';
import 'package:tech_blog_search_app/ui/fonts.gen.dart';

class UITheme {
  static final lightModeTheme = ThemeData(
    colorScheme: lightColorScheme,
    useMaterial3: true,
    fontFamily: FontFamily.pretendard,
  );

  static final dartModeTheme = ThemeData(
    colorScheme: darkColorScheme,
    useMaterial3: true,
    fontFamily: FontFamily.pretendard,
  );
}