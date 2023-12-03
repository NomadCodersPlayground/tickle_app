import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_content_model.freezed.dart';
part 'article_content_model.g.dart';

@freezed
class ArticleContentModel with _$ArticleContentModel {
  const factory ArticleContentModel({
    required int id,
    required String title,
    required String articleContents,
    required List<String> tags,
    required DateTime createdAt,
    required int views,
    required int todayViews,
    required int weeklyViews,
    required int monthlyViews,
  }) = _SearchResultContentModel;

  factory ArticleContentModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentModelFromJson(json);
}
