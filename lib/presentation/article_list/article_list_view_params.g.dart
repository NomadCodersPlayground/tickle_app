// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_view_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleListViewParamsImpl _$$ArticleListViewParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleListViewParamsImpl(
      sortOption:
          $enumDecodeNullable(_$SortOptionEnumMap, json['sortOption']) ??
              SortOption.MOST_VIEWS,
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) =>
                  ArticleContentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchKeyword: json['searchKeyword'] as String?,
    );

Map<String, dynamic> _$$ArticleListViewParamsImplToJson(
        _$ArticleListViewParamsImpl instance) =>
    <String, dynamic>{
      'sortOption': _$SortOptionEnumMap[instance.sortOption]!,
      'articles': instance.articles,
      'searchKeyword': instance.searchKeyword,
    };

const _$SortOptionEnumMap = {
  SortOption.RECENT: 'RECENT',
  SortOption.MOST_VIEWS: 'MOST_VIEWS',
  SortOption.TODAY_VIEWS: 'TODAY_VIEWS',
  SortOption.WEEKLY_VIEWS: 'WEEKLY_VIEWS',
  SortOption.MONTHLY_VIEWS: 'MONTHLY_VIEWS',
};
