import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_spoken_languages.freezed.dart';
part 'movie_detail_spoken_languages.g.dart';

@freezed
abstract class MovieDetailSpokenLanguages with _$MovieDetailSpokenLanguages {
  factory MovieDetailSpokenLanguages({
    @JsonKey(name: 'iso_639_1') required String iso6391,
    @JsonKey(name: 'name') required String name,
  }) = _MovieDetailSpokenLanguages;

  factory MovieDetailSpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailSpokenLanguagesFromJson(json);
}
