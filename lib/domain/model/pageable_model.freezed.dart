// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageableModel _$PageableModelFromJson(Map<String, dynamic> json) {
  return _PageableModel.fromJson(json);
}

/// @nodoc
mixin _$PageableModel {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  SortModel get sort => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableModelCopyWith<PageableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableModelCopyWith<$Res> {
  factory $PageableModelCopyWith(
          PageableModel value, $Res Function(PageableModel) then) =
      _$PageableModelCopyWithImpl<$Res, PageableModel>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      SortModel sort,
      int offset,
      bool paged,
      bool unpaged});

  $SortModelCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableModelCopyWithImpl<$Res, $Val extends PageableModel>
    implements $PageableModelCopyWith<$Res> {
  _$PageableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortModel,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SortModelCopyWith<$Res> get sort {
    return $SortModelCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableModelImplCopyWith<$Res>
    implements $PageableModelCopyWith<$Res> {
  factory _$$PageableModelImplCopyWith(
          _$PageableModelImpl value, $Res Function(_$PageableModelImpl) then) =
      __$$PageableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      SortModel sort,
      int offset,
      bool paged,
      bool unpaged});

  @override
  $SortModelCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PageableModelImplCopyWithImpl<$Res>
    extends _$PageableModelCopyWithImpl<$Res, _$PageableModelImpl>
    implements _$$PageableModelImplCopyWith<$Res> {
  __$$PageableModelImplCopyWithImpl(
      _$PageableModelImpl _value, $Res Function(_$PageableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_$PageableModelImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortModel,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableModelImpl implements _PageableModel {
  _$PageableModelImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.sort,
      required this.offset,
      required this.paged,
      required this.unpaged});

  factory _$PageableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableModelImplFromJson(json);

  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final SortModel sort;
  @override
  final int offset;
  @override
  final bool paged;
  @override
  final bool unpaged;

  @override
  String toString() {
    return 'PageableModel(pageNumber: $pageNumber, pageSize: $pageSize, sort: $sort, offset: $offset, paged: $paged, unpaged: $unpaged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableModelImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageNumber, pageSize, sort, offset, paged, unpaged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableModelImplCopyWith<_$PageableModelImpl> get copyWith =>
      __$$PageableModelImplCopyWithImpl<_$PageableModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableModelImplToJson(
      this,
    );
  }
}

abstract class _PageableModel implements PageableModel {
  factory _PageableModel(
      {required final int pageNumber,
      required final int pageSize,
      required final SortModel sort,
      required final int offset,
      required final bool paged,
      required final bool unpaged}) = _$PageableModelImpl;

  factory _PageableModel.fromJson(Map<String, dynamic> json) =
      _$PageableModelImpl.fromJson;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  SortModel get sort;
  @override
  int get offset;
  @override
  bool get paged;
  @override
  bool get unpaged;
  @override
  @JsonKey(ignore: true)
  _$$PageableModelImplCopyWith<_$PageableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SortModel _$SortModelFromJson(Map<String, dynamic> json) {
  return _SortModel.fromJson(json);
}

/// @nodoc
mixin _$SortModel {
  bool get empty => throw _privateConstructorUsedError;
  bool get sorted => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortModelCopyWith<SortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortModelCopyWith<$Res> {
  factory $SortModelCopyWith(SortModel value, $Res Function(SortModel) then) =
      _$SortModelCopyWithImpl<$Res, SortModel>;
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class _$SortModelCopyWithImpl<$Res, $Val extends SortModel>
    implements $SortModelCopyWith<$Res> {
  _$SortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_value.copyWith(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortModelImplCopyWith<$Res>
    implements $SortModelCopyWith<$Res> {
  factory _$$SortModelImplCopyWith(
          _$SortModelImpl value, $Res Function(_$SortModelImpl) then) =
      __$$SortModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class __$$SortModelImplCopyWithImpl<$Res>
    extends _$SortModelCopyWithImpl<$Res, _$SortModelImpl>
    implements _$$SortModelImplCopyWith<$Res> {
  __$$SortModelImplCopyWithImpl(
      _$SortModelImpl _value, $Res Function(_$SortModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_$SortModelImpl(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortModelImpl implements _SortModel {
  _$SortModelImpl(
      {required this.empty, required this.sorted, required this.unsorted});

  factory _$SortModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortModelImplFromJson(json);

  @override
  final bool empty;
  @override
  final bool sorted;
  @override
  final bool unsorted;

  @override
  String toString() {
    return 'SortModel(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortModelImpl &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortModelImplCopyWith<_$SortModelImpl> get copyWith =>
      __$$SortModelImplCopyWithImpl<_$SortModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortModelImplToJson(
      this,
    );
  }
}

abstract class _SortModel implements SortModel {
  factory _SortModel(
      {required final bool empty,
      required final bool sorted,
      required final bool unsorted}) = _$SortModelImpl;

  factory _SortModel.fromJson(Map<String, dynamic> json) =
      _$SortModelImpl.fromJson;

  @override
  bool get empty;
  @override
  bool get sorted;
  @override
  bool get unsorted;
  @override
  @JsonKey(ignore: true)
  _$$SortModelImplCopyWith<_$SortModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
