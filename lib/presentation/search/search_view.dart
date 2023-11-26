import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_blog_search_app/presentation/search/search_result_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          ),
          SliverList.separated(
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
        ],
      ),
    );
  }
}
