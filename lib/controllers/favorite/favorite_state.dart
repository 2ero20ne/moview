import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(0) int Sample,
  }) = _FavoriteState;
}
