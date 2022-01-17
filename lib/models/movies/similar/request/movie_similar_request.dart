import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_similar_request.freezed.dart';
part 'movie_similar_request.g.dart';

@freezed
abstract class MovieSimilarRequest with _$MovieSimilarRequest {
  factory MovieSimilarRequest({
    @JsonKey(name: 'movie_id') required String movieId,
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'page') String? page,
  }) = _MovieSimilarRequest;

  factory MovieSimilarRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieSimilarRequestFromJson(json);
}
