import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/utils/skeletons.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/presentation/main/component/banner_horizontal_list.dart';
import 'package:tech_blog_search_app/presentation/main/component/popular_article_horizontal_list.dart';
import 'package:tech_blog_search_app/presentation/main/component/search_button.dart';
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart';
import 'package:tech_blog_search_app/presentation/search/search_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  static const String path = "/";

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: Text("앱 로고"),
        centerTitle: false,
        titleSpacing: 16.w,
        actions: [
          SearchButton(onTap: () => context.push(SearchView.path)),
        ],
      ),
      body: state.isLoading
          ? const MainViewSkeleton()
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    const BannerHorizontalList(
                      itemCount: 5,
                    ),
                    if (!state.data!.recent.empty)
                      PopularArticleHorizontalList(
                        sortOption: SortOption.RECENT,
                        articles: state.data!.recent.content,
                      ),
                    if (!state.data!.today.empty)
                      PopularArticleHorizontalList(
                        sortOption: SortOption.TODAY_VIEWS,
                        articles: state.data!.today.content,
                      ),
                    if (!state.data!.weekly.empty)
                      PopularArticleHorizontalList(
                        sortOption: SortOption.WEEKLY_VIEWS,
                        articles: state.data!.weekly.content,
                      ),
                    if (!state.data!.monthly.empty)
                      PopularArticleHorizontalList(
                        sortOption: SortOption.MONTHLY_VIEWS,
                        articles: state.data!.monthly.content,
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}
