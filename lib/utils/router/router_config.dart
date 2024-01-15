import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/di/di_setup.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/presentation/main/main_view.dart';
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart';
import 'package:tech_blog_search_app/presentation/search/search_view.dart';
import 'package:tech_blog_search_app/presentation/search/search_view_model.dart';

final GoRouter routerConfig = GoRouter(
  initialLocation: MainView.path,
  routes: [
    GoRoute(
      path: MainView.path,
      builder: (_, __) => ChangeNotifierProvider(
          create: (_) => getIt<MainViewModel>(), child: const MainView()),
    ),
    GoRoute(
      path: SearchView.path,
      builder: (_, __) => ChangeNotifierProvider(
        create: (_) => getIt<SearchViewModel>(),
        builder: (_, __) => const SearchView(),
      ),
    ),
    GoRoute(
      path: ArticleListView.path,
      builder: (_, state) => ChangeNotifierProvider(
        create: (_) => getIt<ArticleListViewModel>(
          param1:
              state.extra != null ? state.extra as ArticleListViewParams : null,
        ),
        builder: (_, __) => const ArticleListView(),
      ),
    ),
    GoRoute(
      path: ArticleDetailView.path,
      builder: (_, state) => Provider(
        create: (_) => getIt<ArticleDetailViewModel>(
          param1: state.extra as ArticleContentModel,
        ),
        builder: (_, __) => const ArticleDetailView(),
      ),
    ),
  ],
);
