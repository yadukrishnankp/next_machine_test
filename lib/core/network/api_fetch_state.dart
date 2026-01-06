import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_fetch_state.freezed.dart';
@freezed
class ApiFetchState<T> with _$ApiFetchState<T> {
  const factory ApiFetchState.initial() = Initial<T>;
  const factory ApiFetchState.loading() = Loading<T>;
  const factory ApiFetchState.success(T data) = Success<T>;
  const factory ApiFetchState.failure(String message) = Failure<T>;
}