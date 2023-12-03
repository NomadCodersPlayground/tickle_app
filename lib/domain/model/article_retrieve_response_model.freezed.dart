// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_retrieve_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleRetrieveResponseModel _$ArticleRetrieveResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ArticleRetrieveResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleRetrieveResponseModel {
  List<ArticleContentModel> get content => throw _privateConstructorUsedError;
  PageableModel get pageable => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleRetrieveResponseModelCopyWith<ArticleRetrieveResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRetrieveResponseModelCopyWith<$Res> {
  factory $ArticleRetrieveResponseModelCopyWith(
          ArticleRetrieveResponseModel value,
          $Res Function(ArticleRetrieveResponseModel) then) =
      _$ArticleRetrieveResponseModelCopyWithImpl<$Res,
          ArticleRetrieveResponseModel>;
  @useResult
  $Res call(
      {List<ArticleContentModel> content,
      PageableModel pageable,
      int numberOfElements,
      bool first,
      bool last,
      bool empty});

  $PageableModelCopyWith<$Res> get pageable;
}

/// @nodoc
class _$ArticleRetrieveResponseModelCopyWithImpl<$Res,
        $Val extends ArticleRetrieveResponseModel>
    implements $ArticleRetrieveResponseModelCopyWith<$Res> {
  _$ArticleRetrieveResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? last = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ArticleContentModel>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableModel,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableModelCopyWith<$Res> get pageable {
    return $PageableModelCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleRetrieveResponseModelImplCopyWith<$Res>
    implements $ArticleRetrieveResponseModelCopyWith<$Res> {
  factory _$$ArticleRetrieveResponseModelImplCopyWith(
          _$ArticleRetrieveResponseModelImpl value,
          $Res Function(_$ArticleRetrieveResponseModelImpl) then) =
      __$$ArticleRetrieveResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArticleContentModel> content,
      PageableModel pageable,
      int numberOfElements,
      bool first,
      bool last,
      bool empty});

  @override
  $PageableModelCopyWith<$Res> get pageable;
}

/// @nodoc
class __$$ArticleRetrieveResponseModelImplCopyWithImpl<$Res>
    extends _$ArticleRetrieveResponseModelCopyWithImpl<$Res,
        _$ArticleRetrieveResponseModelImpl>
    implements _$$ArticleRetrieveResponseModelImplCopyWith<$Res> {
  __$$ArticleRetrieveResponseModelImplCopyWithImpl(
      _$ArticleRetrieveResponseModelImpl _value,
      $Res Function(_$ArticleRetrieveResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? last = null,
    Object? empty = null,
  }) {
    return _then(_$ArticleRetrieveResponseModelImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ArticleContentModel>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableModel,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleRetrieveResponseModelImpl
    implements _ArticleRetrieveResponseModel {
  _$ArticleRetrieveResponseModelImpl(
      {required final List<ArticleContentModel> content,
      required this.pageable,
      required this.numberOfElements,
      required this.first,
      required this.last,
      required this.empty})
      : _content = content;

  factory _$ArticleRetrieveResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ArticleRetrieveResponseModelImplFromJson(json);

  final List<ArticleContentModel> _content;
  @override
  List<ArticleContentModel> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final PageableModel pageable;
  @override
  final int numberOfElements;
  @override
  final bool first;
  @override
  final bool last;
  @override
  final bool empty;

  @override
  String toString() {
    return 'ArticleRetrieveResponseModel(content: $content, pageable: $pageable, numberOfElements: $numberOfElements, first: $first, last: $last, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleRetrieveResponseModelImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      numberOfElements,
      first,
      last,
      empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleRetrieveResponseModelImplCopyWith<
          _$ArticleRetrieveResponseModelImpl>
      get copyWith => __$$ArticleRetrieveResponseModelImplCopyWithImpl<
          _$ArticleRetrieveResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleRetrieveResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleRetrieveResponseModel
    implements ArticleRetrieveResponseModel {
  factory _ArticleRetrieveResponseModel(
      {required final List<ArticleContentModel> content,
      required final PageableModel pageable,
      required final int numberOfElements,
      required final bool first,
      required final bool last,
      required final bool empty}) = _$ArticleRetrieveResponseModelImpl;

  factory _ArticleRetrieveResponseModel.fromJson(Map<String, dynamic> json) =
      _$ArticleRetrieveResponseModelImpl.fromJson;

  @override
  List<ArticleContentModel> get content;
  @override
  PageableModel get pageable;
  @override
  int get numberOfElements;
  @override
  bool get first;
  @override
  bool get last;
  @override
  bool get empty;
  @override
  @JsonKey(ignore: true)
  _$$ArticleRetrieveResponseModelImplCopyWith<
          _$ArticleRetrieveResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
