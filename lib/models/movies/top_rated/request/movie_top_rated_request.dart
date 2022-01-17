import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_top_rated_request.freezed.dart';
part 'movie_top_rated_request.g.dart';

@freezed
abstract class MovieTopRatedRequest with _$MovieTopRatedRequest {
  factory MovieTopRatedRequest({
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'region') String? region,
  }) = _MovieTopRatedRequest;

  factory MovieTopRatedRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieTopRatedRequestFromJson(json);
}
