import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'search_movie_response.freezed.dart';
part 'search_movie_response.g.dart';

@freezed
abstract class SearchMovieResponse with _$SearchMovieResponse {
  factory SearchMovieResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') required List<MovieResult> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'status_code') int? statusCode,
  }) = _SearchMovieResponse;

  factory SearchMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieResponseFromJson(json);
}
