import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_production_companies.freezed.dart';
part 'movie_detail_production_companies.g.dart';

@freezed
abstract class MovieDetailProductionCompanies
    with _$MovieDetailProductionCompanies {
  factory MovieDetailProductionCompanies({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'origin_country') required String originCountry,
  }) = _MovieDetailProductionCompanies;

  factory MovieDetailProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailProductionCompaniesFromJson(json);
}
