// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list_view_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleListViewParams _$ArticleListViewParamsFromJson(
    Map<String, dynamic> json) {
  return _ArticleListViewParams.fromJson(json);
}

/// @nodoc
mixin _$ArticleListViewParams {
  SortOption get sortOption => throw _privateConstructorUsedError;
  List<ArticleContentModel> get articles => throw _privateConstructorUsedError;
  String? get searchKeyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleListViewParamsCopyWith<ArticleListViewParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListViewParamsCopyWith<$Res> {
  factory $ArticleListViewParamsCopyWith(ArticleListViewParams value,
          $Res Function(ArticleListViewParams) then) =
      _$ArticleListViewParamsCopyWithImpl<$Res, ArticleListViewParams>;
  @useResult
  $Res call(
      {SortOption sortOption,
      List<ArticleContentModel> articles,
      String? searchKeyword});
}

/// @nodoc
class _$ArticleListViewParamsCopyWithImpl<$Res,
        $Val extends ArticleListViewParams>
    implements $ArticleListViewParamsCopyWith<$Res> {
  _$ArticleListViewParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortOption = null,
    Object? articles = null,
    Object? searchKeyword = freezed,
  }) {
    return _then(_value.copyWith(
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as SortOption,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleContentModel>,
      searchKeyword: freezed == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleListViewParamsImplCopyWith<$Res>
    implements $ArticleListViewParamsCopyWith<$Res> {
  factory _$$ArticleListViewParamsImplCopyWith(
          _$ArticleListViewParamsImpl value,
          $Res Function(_$ArticleListViewParamsImpl) then) =
      __$$ArticleListViewParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOption sortOption,
      List<ArticleContentModel> articles,
      String? searchKeyword});
}

/// @nodoc
class __$$ArticleListViewParamsImplCopyWithImpl<$Res>
    extends _$ArticleListViewParamsCopyWithImpl<$Res,
        _$ArticleListViewParamsImpl>
    implements _$$ArticleListViewParamsImplCopyWith<$Res> {
  __$$ArticleListViewParamsImplCopyWithImpl(_$ArticleListViewParamsImpl _value,
      $Res Function(_$ArticleListViewParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortOption = null,
    Object? articles = null,
    Object? searchKeyword = freezed,
  }) {
    return _then(_$ArticleListViewParamsImpl(
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as SortOption,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleContentModel>,
      searchKeyword: freezed == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleListViewParamsImpl implements _ArticleListViewParams {
  _$ArticleListViewParamsImpl(
      {this.sortOption = SortOption.MOST_VIEWS,
      final List<ArticleContentModel> articles = const [],
      this.searchKeyword})
      : _articles = articles;

  factory _$ArticleListViewParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleListViewParamsImplFromJson(json);

  @override
  @JsonKey()
  final SortOption sortOption;
  final List<ArticleContentModel> _articles;
  @override
  @JsonKey()
  List<ArticleContentModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final String? searchKeyword;

  @override
  String toString() {
    return 'ArticleListViewParams(sortOption: $sortOption, articles: $articles, searchKeyword: $searchKeyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleListViewParamsImpl &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.searchKeyword, searchKeyword) ||
                other.searchKeyword == searchKeyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sortOption,
      const DeepCollectionEquality().hash(_articles), searchKeyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleListViewParamsImplCopyWith<_$ArticleListViewParamsImpl>
      get copyWith => __$$ArticleListViewParamsImplCopyWithImpl<
          _$ArticleListViewParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleListViewParamsImplToJson(
      this,
    );
  }
}

abstract class _ArticleListViewParams implements ArticleListViewParams {
  factory _ArticleListViewParams(
      {final SortOption sortOption,
      final List<ArticleContentModel> articles,
      final String? searchKeyword}) = _$ArticleListViewParamsImpl;

  factory _ArticleListViewParams.fromJson(Map<String, dynamic> json) =
      _$ArticleListViewParamsImpl.fromJson;

  @override
  SortOption get sortOption;
  @override
  List<ArticleContentModel> get articles;
  @override
  String? get searchKeyword;
  @override
  @JsonKey(ignore: true)
  _$$ArticleListViewParamsImplCopyWith<_$ArticleListViewParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
