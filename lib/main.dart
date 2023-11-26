import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/presentation/search/search_view.dart';
import 'package:tech_blog_search_app/ui/ui_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (_, child) => MaterialApp(
        theme: UITheme.lightModeTheme,
        darkTheme: UITheme.dartModeTheme,
        home: SearchView(),
      ),
    )
  );
}