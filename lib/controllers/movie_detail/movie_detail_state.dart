import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';
import 'package:moview/models/movies/detail/response/movie_detail_response.dart';

part 'movie_detail_state.freezed.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    MovieDetailResponse? movie,
    List<MovieResult>? similarList,
    Set<String>? favoriteList,
    @Default(false) bool isFavorite,
  }) = _MovieDetailState;
}
