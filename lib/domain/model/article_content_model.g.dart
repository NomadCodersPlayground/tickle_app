// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultContentModelImpl _$$SearchResultContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultContentModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      articleContents: json['articleContents'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      views: json['views'] as int,
      todayViews: json['todayViews'] as int,
      weeklyViews: json['weeklyViews'] as int,
      monthlyViews: json['monthlyViews'] as int,
    );

Map<String, dynamic> _$$SearchResultContentModelImplToJson(
        _$SearchResultContentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'articleContents': instance.articleContents,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'views': instance.views,
      'todayViews': instance.todayViews,
      'weeklyViews': instance.weeklyViews,
      'monthlyViews': instance.monthlyViews,
    };
