import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/main/component/search_button.dart';
import 'package:tech_blog_search_app/presentation/search_result/component/search_result_card.dart';
import 'package:tech_blog_search_app/presentation/search_result/component/search_text_field.dart';
import 'package:tech_blog_search_app/presentation/search_result/component/search_view_app_bar.dart';
import 'package:tech_blog_search_app/presentation/search_result/search_result_view_model.dart';

class SearchResultView extends StatelessWidget {
  SearchResultView({super.key});

  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SearchViewAppBar(
            title: Consumer<SearchResultViewModel>(
              builder: (_, viewModel, __) => AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: viewModel.showTextField
                    ? SearchTextField(controller: _searchTextController)
                    : Container(),
              ),
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverList.separated(
              itemCount: 10,
              itemBuilder: (_, __) => SearchResultCard(
                title: "스프링과 스프링부트(Spring Boot)ㅣ정의, 특징.",
                content:
                    "스프링부트(Spring Boot)는 자바의 웹 프레임워크로 기존 스프링 프레임워크(Spring Framework)에  톰캣 서버를 내장하고 여러 편의 기능들을 ...스프링부트(Spring Boot)는 자바의 웹 프레임워크로 기존 스프링 프레임워크(Spring Framework)에  톰캣 서버를 내장하고 여러 편의 기능들을 ...스프링부트(Spring Boot)는 자바의 웹 프레임워크로 기존 스프링 프레임워크(Spring Framework)에  톰캣 서버를 내장하고 여러 편의 기능들을 ...스프링부트(Spring Boot)는 자바의 웹 프레임워크로 기존 스프링 프레임워크(Spring Framework)에  톰캣 서버를 내장하고 여러 편의 기능들을 ...",
                imageUrl:
                    "https://velog.velcdn.com/images/falling_star3/post/7eef0696-76c6-4dcb-858b-f91ef597eddc/%EC%8A%A4%ED%94%84%EB%A7%81%EB%B6%80%ED%8A%B8.JPG",
              ),
              separatorBuilder: (_, __) => Divider(
                color: Theme.of(context).colorScheme.secondary,
                height: 0,
                thickness: 0,
                indent: 16.w,
                endIndent: 16.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
