import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadiusGeometry? radius;

  const Skeleton({
    super.key,
    this.width,
    this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: radius,
      ),
    );
  }
}

class SkeletonView extends StatelessWidget {
  final Widget child;
  const SkeletonView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.surfaceVariant,
      highlightColor: Theme.of(context).colorScheme.surfaceVariant.withAlpha(125),
      child: child,
    );
  }
}


class MainViewSkeleton extends StatelessWidget {
  const MainViewSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonView(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            _bannerSkeleton(),
            _popularArticleListItemSkeleton(),
            _popularArticleListItemSkeleton(),
            _popularArticleListItemSkeleton(),
            _popularArticleListItemSkeleton(),
          ],
        ),
      ),
    );
  }

  Widget _bannerSkeleton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      child: Skeleton(
        width: 343.w,
        height: 144.w,
        radius: const BorderRadius.all(Radius.circular(16.0)),
      ),
    );
  }

  Widget _popularArticleListItemSkeleton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Skeleton(
            width: 100.w,
            height: 22.sp,
            radius: const BorderRadius.all(Radius.circular(4)),
          ),
          SizedBox(height: 12.w),
          Container(
            height: 172.w,
            margin: EdgeInsets.only(bottom: 24.w),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => AspectRatio(
                aspectRatio: 118 / 172,
                child: Column(
                  children: [
                    Skeleton(width: 118.w, height: 118.w),
                    SizedBox(height: 6.w),
                    Skeleton(
                      height: 16.sp,
                      radius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    SizedBox(height: 6.w),
                    Skeleton(
                      height: 16.sp,
                      radius: const BorderRadius.all(Radius.circular(4)),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleListViewSkeleton extends StatelessWidget {
  const ArticleListViewSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonView(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, __) => _articleListItemSkeleton(),
        itemCount: 7,
      ),
    );
  }

  Widget _articleListItemSkeleton() {
    return AspectRatio(
      aspectRatio: 375 / 112,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skeleton(width: 200.w, height: 12.sp),
                  SizedBox(height: 12.w),
                  Skeleton(height: 12.sp),
                  SizedBox(height: 6.w),
                  Skeleton(height: 12.sp),
                  SizedBox(height: 6.w),
                  Skeleton(height: 12.sp),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Skeleton(width: 56.w, height: 56.w),
          ],
        ),
      ),
    );
  }
}
