import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_content_model.freezed.dart';
part 'article_content_model.g.dart';

@freezed
class ArticleContentModel with _$ArticleContentModel {
  const factory ArticleContentModel({
    required int id,
    required String title,
    required String description,
    required String uri,
    String? mainImageUrl,
    required DateTime createdDate,
  }) = _SearchResultContentModel;

  factory ArticleContentModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentModelFromJson(json);
}
