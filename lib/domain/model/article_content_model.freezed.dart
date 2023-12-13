// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleContentModel _$ArticleContentModelFromJson(Map<String, dynamic> json) {
  return _SearchResultContentModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleContentModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String? get mainImageUrl => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleContentModelCopyWith<ArticleContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleContentModelCopyWith<$Res> {
  factory $ArticleContentModelCopyWith(
          ArticleContentModel value, $Res Function(ArticleContentModel) then) =
      _$ArticleContentModelCopyWithImpl<$Res, ArticleContentModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String uri,
      String? mainImageUrl,
      DateTime createdDate});
}

/// @nodoc
class _$ArticleContentModelCopyWithImpl<$Res, $Val extends ArticleContentModel>
    implements $ArticleContentModelCopyWith<$Res> {
  _$ArticleContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? uri = null,
    Object? mainImageUrl = freezed,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultContentModelImplCopyWith<$Res>
    implements $ArticleContentModelCopyWith<$Res> {
  factory _$$SearchResultContentModelImplCopyWith(
          _$SearchResultContentModelImpl value,
          $Res Function(_$SearchResultContentModelImpl) then) =
      __$$SearchResultContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String uri,
      String? mainImageUrl,
      DateTime createdDate});
}

/// @nodoc
class __$$SearchResultContentModelImplCopyWithImpl<$Res>
    extends _$ArticleContentModelCopyWithImpl<$Res,
        _$SearchResultContentModelImpl>
    implements _$$SearchResultContentModelImplCopyWith<$Res> {
  __$$SearchResultContentModelImplCopyWithImpl(
      _$SearchResultContentModelImpl _value,
      $Res Function(_$SearchResultContentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? uri = null,
    Object? mainImageUrl = freezed,
    Object? createdDate = null,
  }) {
    return _then(_$SearchResultContentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageUrl: freezed == mainImageUrl
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultContentModelImpl implements _SearchResultContentModel {
  const _$SearchResultContentModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.uri,
      this.mainImageUrl,
      required this.createdDate});

  factory _$SearchResultContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultContentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String uri;
  @override
  final String? mainImageUrl;
  @override
  final DateTime createdDate;

  @override
  String toString() {
    return 'ArticleContentModel(id: $id, title: $title, description: $description, uri: $uri, mainImageUrl: $mainImageUrl, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultContentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.mainImageUrl, mainImageUrl) ||
                other.mainImageUrl == mainImageUrl) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, uri, mainImageUrl, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultContentModelImplCopyWith<_$SearchResultContentModelImpl>
      get copyWith => __$$SearchResultContentModelImplCopyWithImpl<
          _$SearchResultContentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultContentModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResultContentModel implements ArticleContentModel {
  const factory _SearchResultContentModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String uri,
      final String? mainImageUrl,
      required final DateTime createdDate}) = _$SearchResultContentModelImpl;

  factory _SearchResultContentModel.fromJson(Map<String, dynamic> json) =
      _$SearchResultContentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get uri;
  @override
  String? get mainImageUrl;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultContentModelImplCopyWith<_$SearchResultContentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
