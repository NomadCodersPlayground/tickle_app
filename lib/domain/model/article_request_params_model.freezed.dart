// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_request_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleRequestParamsModel _$ArticleRequestParamsModelFromJson(
    Map<String, dynamic> json) {
  return _ArticleRequestParamsModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleRequestParamsModel {
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;
  SortOption get sortOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleRequestParamsModelCopyWith<ArticleRequestParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRequestParamsModelCopyWith<$Res> {
  factory $ArticleRequestParamsModelCopyWith(ArticleRequestParamsModel value,
          $Res Function(ArticleRequestParamsModel) then) =
      _$ArticleRequestParamsModelCopyWithImpl<$Res, ArticleRequestParamsModel>;
  @useResult
  $Res call({int? page, int? size, String? keywords, SortOption sortOptions});
}

/// @nodoc
class _$ArticleRequestParamsModelCopyWithImpl<$Res,
        $Val extends ArticleRequestParamsModel>
    implements $ArticleRequestParamsModelCopyWith<$Res> {
  _$ArticleRequestParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? keywords = freezed,
    Object? sortOptions = null,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOptions: null == sortOptions
          ? _value.sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as SortOption,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleRequestParamsModelImplCopyWith<$Res>
    implements $ArticleRequestParamsModelCopyWith<$Res> {
  factory _$$ArticleRequestParamsModelImplCopyWith(
          _$ArticleRequestParamsModelImpl value,
          $Res Function(_$ArticleRequestParamsModelImpl) then) =
      __$$ArticleRequestParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? size, String? keywords, SortOption sortOptions});
}

/// @nodoc
class __$$ArticleRequestParamsModelImplCopyWithImpl<$Res>
    extends _$ArticleRequestParamsModelCopyWithImpl<$Res,
        _$ArticleRequestParamsModelImpl>
    implements _$$ArticleRequestParamsModelImplCopyWith<$Res> {
  __$$ArticleRequestParamsModelImplCopyWithImpl(
      _$ArticleRequestParamsModelImpl _value,
      $Res Function(_$ArticleRequestParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? keywords = freezed,
    Object? sortOptions = null,
  }) {
    return _then(_$ArticleRequestParamsModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOptions: null == sortOptions
          ? _value.sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as SortOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleRequestParamsModelImpl implements _ArticleRequestParamsModel {
  _$ArticleRequestParamsModelImpl(
      {this.page, this.size, this.keywords, required this.sortOptions});

  factory _$ArticleRequestParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleRequestParamsModelImplFromJson(json);

  @override
  final int? page;
  @override
  final int? size;
  @override
  final String? keywords;
  @override
  final SortOption sortOptions;

  @override
  String toString() {
    return 'ArticleRequestParamsModel(page: $page, size: $size, keywords: $keywords, sortOptions: $sortOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleRequestParamsModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords) &&
            (identical(other.sortOptions, sortOptions) ||
                other.sortOptions == sortOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, size, keywords, sortOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleRequestParamsModelImplCopyWith<_$ArticleRequestParamsModelImpl>
      get copyWith => __$$ArticleRequestParamsModelImplCopyWithImpl<
          _$ArticleRequestParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleRequestParamsModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleRequestParamsModel implements ArticleRequestParamsModel {
  factory _ArticleRequestParamsModel(
      {final int? page,
      final int? size,
      final String? keywords,
      required final SortOption sortOptions}) = _$ArticleRequestParamsModelImpl;

  factory _ArticleRequestParamsModel.fromJson(Map<String, dynamic> json) =
      _$ArticleRequestParamsModelImpl.fromJson;

  @override
  int? get page;
  @override
  int? get size;
  @override
  String? get keywords;
  @override
  SortOption get sortOptions;
  @override
  @JsonKey(ignore: true)
  _$$ArticleRequestParamsModelImplCopyWith<_$ArticleRequestParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
