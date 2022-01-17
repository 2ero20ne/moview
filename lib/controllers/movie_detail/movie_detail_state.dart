import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state.freezed.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default(0) int Sample,
  }) = _MovieDetailState;
}
