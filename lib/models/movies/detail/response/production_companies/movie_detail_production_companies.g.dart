// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_production_companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailProductionCompanies _$$_MovieDetailProductionCompaniesFromJson(
        Map<String, dynamic> json) =>
    _$_MovieDetailProductionCompanies(
      name: json['name'] as String,
      id: json['id'] as int,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String,
    );

Map<String, dynamic> _$$_MovieDetailProductionCompaniesToJson(
        _$_MovieDetailProductionCompanies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };
