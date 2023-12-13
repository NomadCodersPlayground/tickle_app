import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';

part 'article_request_params_model.freezed.dart';

part 'article_request_params_model.g.dart';

@freezed
class ArticleRequestParamsModel with _$ArticleRequestParamsModel {
  factory ArticleRequestParamsModel({
    int? page,
    int? size,
    String? keywords,
    required SortOption sortOptions,
  }) = _ArticleRequestParamsModel;

  factory ArticleRequestParamsModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleRequestParamsModelFromJson(json);
}
