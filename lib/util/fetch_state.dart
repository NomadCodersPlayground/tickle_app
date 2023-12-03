import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_state.freezed.dart';

part 'fetch_state.g.dart';

@Freezed(genericArgumentFactories: true)
class FetchState<T> with _$FetchState<T> {
  factory FetchState({
    T? data,
    @Default(false) bool isLoading,
  }) = _FetchState;

  factory FetchState.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$FetchStateFromJson<T>(json, fromJsonT);
}
