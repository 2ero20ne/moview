import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_popular_request.freezed.dart';
part 'movie_popular_request.g.dart';

@freezed
abstract class MoviePopularRequest with _$MoviePopularRequest {
  factory MoviePopularRequest({
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'region') String? region,
  }) = _MoviePopularRequest;

  factory MoviePopularRequest.fromJson(Map<String, dynamic> json) =>
      _$MoviePopularRequestFromJson(json);
}
