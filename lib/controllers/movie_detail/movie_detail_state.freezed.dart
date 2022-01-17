// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailStateTearOff {
  const _$MovieDetailStateTearOff();

  _MovieDetailState call({int Sample = 0}) {
    return _MovieDetailState(
      Sample: Sample,
    );
  }
}

/// @nodoc
const $MovieDetailState = _$MovieDetailStateTearOff();

/// @nodoc
mixin _$MovieDetailState {
  int get Sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
  $Res call({int Sample});
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  final MovieDetailState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailState) _then;

  @override
  $Res call({
    Object? Sample = freezed,
  }) {
    return _then(_value.copyWith(
      Sample: Sample == freezed
          ? _value.Sample
          : Sample // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(
          _MovieDetailState value, $Res Function(_MovieDetailState) then) =
      __$MovieDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({int Sample});
}

/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(
      _MovieDetailState _value, $Res Function(_MovieDetailState) _then)
      : super(_value, (v) => _then(v as _MovieDetailState));

  @override
  _MovieDetailState get _value => super._value as _MovieDetailState;

  @override
  $Res call({
    Object? Sample = freezed,
  }) {
    return _then(_MovieDetailState(
      Sample: Sample == freezed
          ? _value.Sample
          : Sample // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState({this.Sample = 0});

  @JsonKey()
  @override
  final int Sample;

  @override
  String toString() {
    return 'MovieDetailState(Sample: $Sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailState &&
            const DeepCollectionEquality().equals(other.Sample, Sample));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(Sample));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState({int Sample}) = _$_MovieDetailState;

  @override
  int get Sample;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
