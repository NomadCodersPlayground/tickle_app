import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view.dart';
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart';
import 'package:tech_blog_search_app/presentation/search/component/search_keyword_button.dart';
import 'package:tech_blog_search_app/presentation/search/component/search_keyword_clear_button.dart';
import 'package:tech_blog_search_app/presentation/search/component/search_text_field.dart';
import 'package:tech_blog_search_app/presentation/search/search_view_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  static const path = "/search";

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SearchViewModel>();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.w,
        leadingWidth: 24.w,
        title: SearchTextField(
          onChanged: viewModel.setSearchKeyword,
          onSubmitted: (value) {
            if (value.isEmpty) return;
            viewModel.storeSearchKeyword();
            context.push(
              ArticleListView.path,
              extra: ArticleListViewParams(
                searchKeyword: viewModel.searchKeyword,
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
          child: Selector<SearchViewModel, List<String>>(
            selector: (_, viewModel) => viewModel.storedSearchKeywordList,
            builder: (_, value, __) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (value.isNotEmpty) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "최근 검색어",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SearchKeywordClearButton(onTap: viewModel.clearSearchKeyword),
                    ],
                  ),
                  SizedBox(height: 12.w),
                ],
                Wrap(
                  runSpacing: 5.w,
                  spacing: 5.w,
                  children: value
                      .map(
                        (keyword) => SearchKeywordButton(
                          keyword: keyword,
                          onTap: () {
                            viewModel.setSearchKeyword(keyword);
                            viewModel.storeSearchKeyword();
                            context.push(
                              ArticleListView.path,
                              extra: ArticleListViewParams(
                                searchKeyword: keyword,
                              ),
                            );
                          },
                          onDelete: () => viewModel.deleteSearchKeyword(keyword),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
