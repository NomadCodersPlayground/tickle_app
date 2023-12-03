// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_retrieve_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleRetrieveResponseModelImpl _$$ArticleRetrieveResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleRetrieveResponseModelImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => ArticleContentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable:
          PageableModel.fromJson(json['pageable'] as Map<String, dynamic>),
      numberOfElements: json['numberOfElements'] as int,
      first: json['first'] as bool,
      last: json['last'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$ArticleRetrieveResponseModelImplToJson(
        _$ArticleRetrieveResponseModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
      'numberOfElements': instance.numberOfElements,
      'first': instance.first,
      'last': instance.last,
      'empty': instance.empty,
    };
