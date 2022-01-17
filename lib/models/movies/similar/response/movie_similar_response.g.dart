// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_similar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieSimilarResponse _$$_MovieSimilarResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MovieSimilarResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['total_results'] as int,
      totalPages: json['total_pages'] as int,
      statusMessage: json['status_message'] as String?,
      statusCode: json['status_code'] as int?,
    );

Map<String, dynamic> _$$_MovieSimilarResponseToJson(
        _$_MovieSimilarResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'status_message': instance.statusMessage,
      'status_code': instance.statusCode,
    };
