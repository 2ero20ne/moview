import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result.freezed.dart';
part 'movie_result.g.dart';

@freezed
abstract class MovieResult with _$MovieResult {
  factory MovieResult({
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'adult') required bool adult,
    @JsonKey(name: 'overview') required String overview,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'video') required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}
