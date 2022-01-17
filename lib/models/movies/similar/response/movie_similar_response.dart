import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'movie_similar_response.freezed.dart';
part 'movie_similar_response.g.dart';

@freezed
abstract class MovieSimilarResponse with _$MovieSimilarResponse {
  factory MovieSimilarResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') required List<MovieResult> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'status_code') int? statusCode,
  }) = _MovieSimilarResponse;

  factory MovieSimilarResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieSimilarResponseFromJson(json);
}
