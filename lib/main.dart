import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/di/di_setup.dart';
import 'package:tech_blog_search_app/hive/init_hive.dart';
import 'package:tech_blog_search_app/ui/ui_theme.dart';
import 'package:tech_blog_search_app/utils/router/router_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initHive();
  configureDependencies();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (_, child) => MaterialApp.router(
        theme: UITheme.lightModeTheme,
        darkTheme: UITheme.darkModeTheme,
        routerConfig: routerConfig,
      ),
    ),
  );
}
