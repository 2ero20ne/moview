// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<MovieResult>? movieList,
      List<MovieResult>? popularList,
      List<MovieResult>? carouselList}) {
    return _HomeState(
      movieList: movieList,
      popularList: popularList,
      carouselList: carouselList,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<MovieResult>? get movieList => throw _privateConstructorUsedError;
  List<MovieResult>? get popularList => throw _privateConstructorUsedError;
  List<MovieResult>? get carouselList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<MovieResult>? movieList,
      List<MovieResult>? popularList,
      List<MovieResult>? carouselList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? popularList = freezed,
    Object? carouselList = freezed,
  }) {
    return _then(_value.copyWith(
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      popularList: popularList == freezed
          ? _value.popularList
          : popularList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      carouselList: carouselList == freezed
          ? _value.carouselList
          : carouselList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MovieResult>? movieList,
      List<MovieResult>? popularList,
      List<MovieResult>? carouselList});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? popularList = freezed,
    Object? carouselList = freezed,
  }) {
    return _then(_HomeState(
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      popularList: popularList == freezed
          ? _value.popularList
          : popularList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      carouselList: carouselList == freezed
          ? _value.carouselList
          : carouselList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.movieList, this.popularList, this.carouselList});

  @override
  final List<MovieResult>? movieList;
  @override
  final List<MovieResult>? popularList;
  @override
  final List<MovieResult>? carouselList;

  @override
  String toString() {
    return 'HomeState(movieList: $movieList, popularList: $popularList, carouselList: $carouselList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.movieList, movieList) &&
            const DeepCollectionEquality()
                .equals(other.popularList, popularList) &&
            const DeepCollectionEquality()
                .equals(other.carouselList, carouselList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieList),
      const DeepCollectionEquality().hash(popularList),
      const DeepCollectionEquality().hash(carouselList));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {List<MovieResult>? movieList,
      List<MovieResult>? popularList,
      List<MovieResult>? carouselList}) = _$_HomeState;

  @override
  List<MovieResult>? get movieList;
  @override
  List<MovieResult>? get popularList;
  @override
  List<MovieResult>? get carouselList;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
