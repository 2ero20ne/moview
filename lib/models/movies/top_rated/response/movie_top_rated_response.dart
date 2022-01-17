import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'movie_top_rated_response.freezed.dart';
part 'movie_top_rated_response.g.dart';

@freezed
abstract class MovieTopRatedResponse with _$MovieTopRatedResponse {
  factory MovieTopRatedResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') required List<MovieResult> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'status_code') int? statusCode,
  }) = _MovieTopRatedResponse;

  factory MovieTopRatedResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieTopRatedResponseFromJson(json);
}
