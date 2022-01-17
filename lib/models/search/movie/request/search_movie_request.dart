import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/utils/enum.dart';

part 'search_movie_request.freezed.dart';
part 'search_movie_request.g.dart';

@freezed
abstract class SearchMovieRequest with _$SearchMovieRequest {
  factory SearchMovieRequest({
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'query') required String query,
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'include_adult') String? includeAdult,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'year') String? year,
    @JsonKey(name: 'primary_release_year') String? primaryReleaseYear,
  }) = _SearchMovieRequest;

  factory SearchMovieRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieRequestFromJson(json);
}
