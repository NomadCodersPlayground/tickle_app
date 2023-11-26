import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/ui/color_schemes.g.dart';

class UITheme {
  static final lightModeTheme = ThemeData(
    colorScheme: lightColorScheme,
    useMaterial3: true,
  );

  static final dartModeTheme = ThemeData(
    colorScheme: darkColorScheme,
    useMaterial3: true,
  );
}