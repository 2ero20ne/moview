// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_popular_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviePopularRequest _$$_MoviePopularRequestFromJson(
        Map<String, dynamic> json) =>
    _$_MoviePopularRequest(
      language: json['language'] as String,
      page: json['page'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$$_MoviePopularRequestToJson(
        _$_MoviePopularRequest instance) =>
    <String, dynamic>{
      'language': instance.language,
      'page': instance.page,
      'region': instance.region,
    };
