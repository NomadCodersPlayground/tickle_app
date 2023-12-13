import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerHorizontalList extends StatelessWidget {
  final int itemCount;
  final EdgeInsetsGeometry? margin;

  const BannerHorizontalList({
    Key? key,
    required this.itemCount,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.symmetric(vertical: 16.w),
      child: CarouselSlider.builder(
        itemCount: itemCount,
        itemBuilder: (_, __, ___) => _bannerItem(),
        options: CarouselOptions(
          aspectRatio: 343 / 144,
          autoPlay: true,
          viewportFraction: 1.0,
        ),
      ),
    );
  }

  Widget _bannerItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: NetworkImage(
            "https://velog.velcdn.com/images/falling_star3/post/7eef0696-76c6-4dcb-858b-f91ef597eddc/%EC%8A%A4%ED%94%84%EB%A7%81%EB%B6%80%ED%8A%B8.JPG",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
