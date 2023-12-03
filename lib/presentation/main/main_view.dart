import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/main/component/banner_horizontal_list.dart';
import 'package:tech_blog_search_app/presentation/main/component/search_button.dart';
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text("앱 로고"),
        centerTitle: false,
        titleSpacing: 16.w,
        actions: [
          SearchButton(onTap: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              BannerHorizontalList(
                itemCount: 5,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
