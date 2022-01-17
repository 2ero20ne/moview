import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_production_countries.freezed.dart';
part 'movie_detail_production_countries.g.dart';

@freezed
abstract class MovieDetailProductionCountries
    with _$MovieDetailProductionCountries {
  factory MovieDetailProductionCountries({
    @JsonKey(name: 'iso_3166_1') required String iso31661,
    @JsonKey(name: 'name') required String name,
  }) = _MovieDetailProductionCountries;

  factory MovieDetailProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailProductionCountriesFromJson(json);
}
