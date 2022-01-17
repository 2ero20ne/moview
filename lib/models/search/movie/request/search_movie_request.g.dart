// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchMovieRequest _$$_SearchMovieRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SearchMovieRequest(
      language: json['language'] as String,
      query: json['query'] as String,
      page: json['page'] as String?,
      includeAdult: json['include_adult'] as String?,
      region: json['region'] as String?,
      year: json['year'] as String?,
      primaryReleaseYear: json['primary_release_year'] as String?,
    );

Map<String, dynamic> _$$_SearchMovieRequestToJson(
        _$_SearchMovieRequest instance) =>
    <String, dynamic>{
      'language': instance.language,
      'query': instance.query,
      'page': instance.page,
      'include_adult': instance.includeAdult,
      'region': instance.region,
      'year': instance.year,
      'primary_release_year': instance.primaryReleaseYear,
    };
