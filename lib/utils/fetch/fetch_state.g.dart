// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchStateImpl<T> _$$FetchStateImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$FetchStateImpl<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$FetchStateImplToJson<T>(
  _$FetchStateImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'isLoading': instance.isLoading,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
