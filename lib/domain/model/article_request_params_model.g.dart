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
      sortOptions: $enumDecode(_$SortOptionEnumMap, json['sortOptions']),
    );

Map<String, dynamic> _$$ArticleRequestParamsModelImplToJson(
        _$ArticleRequestParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'keywords': instance.keywords,
      'sortOptions': _$SortOptionEnumMap[instance.sortOptions]!,
    };

const _$SortOptionEnumMap = {
  SortOption.RECENT: 'RECENT',
  SortOption.MOST_VIEWS: 'MOST_VIEWS',
  SortOption.TODAY_VIEWS: 'TODAY_VIEWS',
  SortOption.WEEKLY_VIEWS: 'WEEKLY_VIEWS',
  SortOption.MONTHLY_VIEWS: 'MONTHLY_VIEWS',
};
