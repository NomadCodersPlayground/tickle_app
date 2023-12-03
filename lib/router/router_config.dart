import 'package:go_router/go_router.dart';
import 'package:tech_blog_search_app/presentation/main/main_view.dart';
import 'package:tech_blog_search_app/presentation/search_result/search_result_view.dart';

final GoRouter routerConfig = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const MainView(),
    ),
    GoRoute(
      path: "/search_result",
      builder: (_, __) => SearchResultView(),
    ),
  ]
);