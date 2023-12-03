import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_request_params_model.freezed.dart';

part 'article_request_params_model.g.dart';

enum SortOptions {
  RECENT,
  VIEWS,
  TODAY_VIEWS,
  WEEKLY_VIEWS,
  MONTHLY_VIEWS,
}

@freezed
class ArticleRequestParamsModel with _$ArticleRequestParamsModel {
  factory ArticleRequestParamsModel({
    int? page,
    int? size,
    String? keywords,
    required SortOptions sortOptions,
  }) = _ArticleRequestParamsModel;

  factory ArticleRequestParamsModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleRequestParamsModelFromJson(json);
}
