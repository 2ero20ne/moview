import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:moview/api/api_client.dart';
import 'package:moview/models/movies/detail/request/movie_detail_request.dart';
import 'package:moview/models/movies/detail/response/movie_detail_response.dart';
import 'package:moview/models/movies/popular/request/movie_popular_request.dart';
import 'package:moview/models/movies/popular/response/movie_popular_response.dart';
import 'package:moview/models/movies/similar/request/movie_similar_request.dart';
import 'package:moview/models/movies/similar/response/movie_similar_response.dart';
import 'package:moview/models/movies/top_rated/request/movie_top_rated_request.dart';
import 'package:moview/models/movies/top_rated/response/movie_top_rated_response.dart';
import 'package:moview/utils/constant.dart';

class MoviesApi {
  final apiClient = ApiClient();

  String get _detail => '/:movie_id';
  String get _popular => '/popular';
  String get _similar => '/:movie_id/similar';
  String get _topRated => '/top_rated';

  Future<MovieDetailResponse> detail(
    BuildContext context, {
    required MovieDetailRequest request,
  }) async {
    final responseJson = await apiClient.getHandler(
      context,
      endPoint: moviePath + _detail.replaceAll(':movie_id', request.movieId),
      body: json.encode(
        request.toJson(),
      ),
    );

    final response = MovieDetailResponse.fromJson(responseJson);
    return response;
  }

  Future<MoviePopularResponse> popular(
    BuildContext context, {
    required MoviePopularRequest request,
  }) async {
    final responseJson = await apiClient.getHandler(
      context,
      endPoint: moviePath + _popular,
      body: json.encode(
        request.toJson(),
      ),
    );

    final response = MoviePopularResponse.fromJson(responseJson);
    return response;
  }

  Future<MovieSimilarResponse> similar(
    BuildContext context, {
    required MovieSimilarRequest request,
  }) async {
    final responseJson = await apiClient.getHandler(
      context,
      endPoint: moviePath + _similar.replaceAll(':movie_id', request.movieId),
      body: json.encode(
        request.toJson(),
      ),
    );

    final response = MovieSimilarResponse.fromJson(responseJson);
    return response;
  }

  Future<MovieTopRatedResponse> topRated(
    BuildContext context, {
    required MovieTopRatedRequest request,
  }) async {
    final responseJson = await apiClient.getHandler(
      context,
      endPoint: moviePath + _topRated,
      body: json.encode(
        request.toJson(),
      ),
    );

    final response = MovieTopRatedResponse.fromJson(responseJson);
    return response;
  }
}
