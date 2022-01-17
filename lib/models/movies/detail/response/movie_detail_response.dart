import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/movies/detail/response/genres/movie_detail_genres.dart';
import 'package:moview/models/movies/detail/response/production_companies/movie_detail_production_companies.dart';
import 'package:moview/models/movies/detail/response/production_countries/movie_detail_production_countries.dart';
import 'package:moview/models/movies/detail/response/spoken_languages/movie_detail_spoken_languages.dart';

part 'movie_detail_response.freezed.dart';
part 'movie_detail_response.g.dart';

@freezed
abstract class MovieDetailResponse with _$MovieDetailResponse {
  factory MovieDetailResponse({
    @JsonKey(name: 'adult') required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'belongs_to_collection')
        Map<String, dynamic>? belongsToCollection,
    @JsonKey(name: 'budget') required int budget,
    @JsonKey(name: 'genres') required List<MovieDetailGenres> genres,
    @JsonKey(name: 'homepage') String? homepage,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'overview') required String? overview,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'production_companies')
        required List<MovieDetailProductionCompanies> productionCompanies,
    @JsonKey(name: 'production_countries')
        required List<MovieDetailProductionCountries> productionCountries,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'revenue') required int revenue,
    @JsonKey(name: 'runtime') int? runtime,
    @JsonKey(name: 'spoken_languages')
        required List<MovieDetailSpokenLanguages> spokenLanguages,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'tagline') String? tagline,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'video') required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'status_code') int? statusCode,
  }) = _MovieDetailResponse;

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);
}
