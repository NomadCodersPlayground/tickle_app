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
      description: json['description'] as String,
      uri: json['uri'] as String,
      mainImageUrl: json['mainImageUrl'] as String?,
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$SearchResultContentModelImplToJson(
        _$SearchResultContentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'uri': instance.uri,
      'mainImageUrl': instance.mainImageUrl,
      'createdDate': instance.createdDate.toIso8601String(),
    };
