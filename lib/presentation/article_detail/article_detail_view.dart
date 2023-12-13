import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view_model.dart';


class ArticleDetailView extends StatelessWidget {
  const ArticleDetailView({super.key});

  static const String path = "/article-detail";

  @override
  Widget build(BuildContext context) {
    final viewModel =  context.read<ArticleDetailViewModel>();
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(viewModel.article.uri)),
        ),
      ),
    );
  }
}
