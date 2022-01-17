import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_request.freezed.dart';
part 'movie_detail_request.g.dart';

@freezed
abstract class MovieDetailRequest with _$MovieDetailRequest {
  factory MovieDetailRequest({
    @JsonKey(name: 'movie_id') required String movieId,
    @JsonKey(name: 'language') required String language,
  }) = _MovieDetailRequest;

  factory MovieDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailRequestFromJson(json);
}
