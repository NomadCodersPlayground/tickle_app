// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_request_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleRequestParamsModelImpl _$$ArticleRequestParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleRequestParamsModelImpl(
      page: json['page'] as int?,
      size: json['size'] as int?,
      keywords: json['keywords'] as String?,
      sortOptions: $enumDecode(_$SortOptionsEnumMap, json['sortOptions']),
    );

Map<String, dynamic> _$$ArticleRequestParamsModelImplToJson(
        _$ArticleRequestParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'keywords': instance.keywords,
      'sortOptions': _$SortOptionsEnumMap[instance.sortOptions]!,
    };

const _$SortOptionsEnumMap = {
  SortOptions.RECENT: 'RECENT',
  SortOptions.VIEWS: 'VIEWS',
  SortOptions.TODAY_VIEWS: 'TODAY_VIEWS',
  SortOptions.WEEKLY_VIEWS: 'WEEKLY_VIEWS',
  SortOptions.MONTHLY_VIEWS: 'MONTHLY_VIEWS',
};
