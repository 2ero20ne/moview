import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    TextEditingController? searchTextController,
    List<MovieResult>? movieList,
  }) = _SearchState;
}
