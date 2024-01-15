import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tech_blog_search_app/utils/sort_option.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

part 'article_list_view_params.freezed.dart';
part 'article_list_view_params.g.dart';

@freezed
class ArticleListViewParams with _$ArticleListViewParams {
	factory ArticleListViewParams({
    @Default(SortOption.MOST_VIEWS) SortOption sortOption,
    @Default([]) List<ArticleContentModel> articles,
}) = _ArticleListViewParams;

	factory ArticleListViewParams.fromJson(Map<String, dynamic> json) => _$ArticleListViewParamsFromJson(json);
}