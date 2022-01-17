import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_genres.freezed.dart';
part 'movie_detail_genres.g.dart';

@freezed
abstract class MovieDetailGenres with _$MovieDetailGenres {
  factory MovieDetailGenres({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _MovieDetailGenres;

  factory MovieDetailGenres.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailGenresFromJson(json);
}
