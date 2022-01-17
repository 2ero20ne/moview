import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moview/models/common/movie_result.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    List<MovieResult>? movieList,
    List<MovieResult>? popularList,
    List<MovieResult>? carouselList,
  }) = _HomeState;
}
