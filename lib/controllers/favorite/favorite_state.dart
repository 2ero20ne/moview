import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/movies/detail/response/movie_detail_response.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    List<MovieDetailResponse>? movieList,
  }) = _FavoriteState;
}
