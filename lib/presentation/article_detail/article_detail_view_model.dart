import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

class ArticleDetailViewModel extends ChangeNotifier {
  final ArticleContentModel article;

  ArticleDetailViewModel({required this.article});
}