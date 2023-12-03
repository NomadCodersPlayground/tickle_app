// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageableModelImpl _$$PageableModelImplFromJson(Map<String, dynamic> json) =>
    _$PageableModelImpl(
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      sort: SortModel.fromJson(json['sort'] as Map<String, dynamic>),
      offset: json['offset'] as int,
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
    );

Map<String, dynamic> _$$PageableModelImplToJson(_$PageableModelImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'sort': instance.sort,
      'offset': instance.offset,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };

_$SortModelImpl _$$SortModelImplFromJson(Map<String, dynamic> json) =>
    _$SortModelImpl(
      empty: json['empty'] as bool,
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
    );

Map<String, dynamic> _$$SortModelImplToJson(_$SortModelImpl instance) =>
    <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
