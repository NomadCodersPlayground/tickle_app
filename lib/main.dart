import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/data/repository/article_repository_impl.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart';
import 'package:tech_blog_search_app/router/router_config.dart';
import 'package:tech_blog_search_app/ui/ui_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (_, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => MainViewModel(
              repository: ArticleRepositoryImpl(
                api: ArticleApi(
                  Dio(),
                  baseUrl: "https://4eb40aa8-ff9f-44ce-b48d-a8a17c86da7c.mock.pstmn.io",
                ),
              ),
            ),
          ),
        ],
        child: MaterialApp.router(
          theme: UITheme.lightModeTheme,
          darkTheme: UITheme.darkModeTheme,
          routerConfig: routerConfig,
        ),
      ),
    ),
  );
}
