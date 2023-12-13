// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchState<T> _$FetchStateFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _FetchState<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$FetchState<T> {
  T? get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchStateCopyWith<T, FetchState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchStateCopyWith<T, $Res> {
  factory $FetchStateCopyWith(
          FetchState<T> value, $Res Function(FetchState<T>) then) =
      _$FetchStateCopyWithImpl<T, $Res, FetchState<T>>;
  @useResult
  $Res call({T? data, bool isLoading});
}

/// @nodoc
class _$FetchStateCopyWithImpl<T, $Res, $Val extends FetchState<T>>
    implements $FetchStateCopyWith<T, $Res> {
  _$FetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchStateImplCopyWith<T, $Res>
    implements $FetchStateCopyWith<T, $Res> {
  factory _$$FetchStateImplCopyWith(
          _$FetchStateImpl<T> value, $Res Function(_$FetchStateImpl<T>) then) =
      __$$FetchStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? data, bool isLoading});
}

/// @nodoc
class __$$FetchStateImplCopyWithImpl<T, $Res>
    extends _$FetchStateCopyWithImpl<T, $Res, _$FetchStateImpl<T>>
    implements _$$FetchStateImplCopyWith<T, $Res> {
  __$$FetchStateImplCopyWithImpl(
      _$FetchStateImpl<T> _value, $Res Function(_$FetchStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$FetchStateImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$FetchStateImpl<T> implements _FetchState<T> {
  _$FetchStateImpl({this.data, this.isLoading = false});

  factory _$FetchStateImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$FetchStateImplFromJson(json, fromJsonT);

  @override
  final T? data;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'FetchState<$T>(data: $data, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStateImplCopyWith<T, _$FetchStateImpl<T>> get copyWith =>
      __$$FetchStateImplCopyWithImpl<T, _$FetchStateImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$FetchStateImplToJson<T>(this, toJsonT);
  }
}

abstract class _FetchState<T> implements FetchState<T> {
  factory _FetchState({final T? data, final bool isLoading}) =
      _$FetchStateImpl<T>;

  factory _FetchState.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$FetchStateImpl<T>.fromJson;

  @override
  T? get data;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$FetchStateImplCopyWith<T, _$FetchStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
