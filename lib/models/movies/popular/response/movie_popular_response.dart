import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'movie_popular_response.freezed.dart';
part 'movie_popular_response.g.dart';

@freezed
abstract class MoviePopularResponse with _$MoviePopularResponse {
  factory MoviePopularResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') required List<MovieResult> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'status_code') int? statusCode,
  }) = _MoviePopularResponse;

  factory MoviePopularResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviePopularResponseFromJson(json);
}
