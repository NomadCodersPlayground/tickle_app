import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';
import 'package:tech_blog_search_app/domain/model/pageable_model.dart';

part 'article_retrieve_response_model.freezed.dart';
part 'article_retrieve_response_model.g.dart';

@freezed
class ArticleRetrieveResponseModel with _$ArticleRetrieveResponseModel {
	factory ArticleRetrieveResponseModel({
    required List<ArticleContentModel> content,
    required PageableModel pageable,
    required int numberOfElements,
    required bool first,
    required bool last,
    required bool empty,
}) = _ArticleRetrieveResponseModel;

	factory ArticleRetrieveResponseModel.fromJson(Map<String, dynamic> json) => _$ArticleRetrieveResponseModelFromJson(json);
}