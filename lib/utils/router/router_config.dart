import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_model.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/presentation/main/main_view.dart';
import 'package:tech_blog_search_app/presentation/search/search_view.dart';

final GoRouter routerConfig = GoRouter(initialLocation: MainView.path, routes: [
  GoRoute(
    path: MainView.path,
    builder: (_, __) => const MainView(),
  ),
  GoRoute(
    path: SearchView.path,
    builder: (_, __) => SearchView(),
  ),
  GoRoute(
    path: ArticleListView.path,
    builder: (_, state) => ChangeNotifierProvider(
      create: (_) => ArticleListViewModel(
        params: state.extra != null ? state.extra as ArticleListViewParams : null,
      ),
      builder: (_, __) => const ArticleListView(),
    ),
  ),
  GoRoute(
    path: ArticleDetailView.path,
    builder: (_, state) => ChangeNotifierProvider(
      create: (_) => ArticleDetailViewModel(
        article: state.extra as ArticleContentModel,
      ),
      builder: (_, __) => const ArticleDetailView(),
    ),
  ),
]);
