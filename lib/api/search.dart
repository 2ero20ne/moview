import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:moview/api/api_client.dart';
import 'package:moview/models/search/movie/request/search_movie_request.dart';
import 'package:moview/models/search/movie/response/search_movie_response.dart';
import 'package:moview/utils/constant.dart';

class SearchApi {
  final apiClient = ApiClient();

  String get _movie => '/movie';

  Future<SearchMovieResponse> movie(
    BuildContext context, {
    required SearchMovieRequest request,
  }) async {
    final responseJson = await apiClient.getHandler(
      context,
      endPoint: searchPath + _movie,
      body: json.encode(
        request.toJson(),
      ),
    );

    final response = SearchMovieResponse.fromJson(responseJson);
    return response;
  }
}
