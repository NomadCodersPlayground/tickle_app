import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pageable_model.freezed.dart';
part 'pageable_model.g.dart';

@freezed
class PageableModel with _$PageableModel {
	factory PageableModel({
    required int pageNumber,
    required int pageSize,
    required SortModel sort,
    required int offset,
    required bool paged,
    required bool unpaged,
}) = _PageableModel;

	factory PageableModel.fromJson(Map<String, dynamic> json) => _$PageableModelFromJson(json);
}

@freezed
class SortModel with _$SortModel {
	factory SortModel({
    required bool empty,
    required bool sorted,
    required bool unsorted,
}) = _SortModel;

	factory SortModel.fromJson(Map<String, dynamic> json) => _$SortModelFromJson(json);
}