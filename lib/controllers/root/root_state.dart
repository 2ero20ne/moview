import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.freezed.dart';

@freezed
abstract class RootState with _$RootState {
  const factory RootState({
    @Default(0) int selectedIndex,
  }) = _RootState;
}
