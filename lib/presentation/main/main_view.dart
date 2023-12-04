import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/main/component/banner_horizontal_list.dart';
import 'package:tech_blog_search_app/presentation/main/component/popular_artice_horizontal_list.dart';
import 'package:tech_blog_search_app/presentation/main/component/search_button.dart';
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

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
          SearchButton(onTap: () {}),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    BannerHorizontalList(
                      itemCount: 5,
                    ),
                    PopularArticleHorizontalList(
                      title: "실시간 인기글",
                      articles: state.data!.recent.content,
                    ),
                    PopularArticleHorizontalList(
                      title: "일간 인기글",
                      articles: state.data!.today.content,
                    ),
                    PopularArticleHorizontalList(
                      title: "주간 인기글",
                      articles: state.data!.weekly.content,
                    ),
                    PopularArticleHorizontalList(
                      title: "월간 인기글",
                      articles: state.data!.monthly.content,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
