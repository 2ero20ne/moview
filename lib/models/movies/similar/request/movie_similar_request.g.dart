// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_similar_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieSimilarRequest _$$_MovieSimilarRequestFromJson(
        Map<String, dynamic> json) =>
    _$_MovieSimilarRequest(
      movieId: json['movie_id'] as String,
      language: json['language'] as String,
      page: json['page'] as String?,
    );

Map<String, dynamic> _$$_MovieSimilarRequestToJson(
        _$_MovieSimilarRequest instance) =>
    <String, dynamic>{
      'movie_id': instance.movieId,
      'language': instance.language,
      'page': instance.page,
    };
