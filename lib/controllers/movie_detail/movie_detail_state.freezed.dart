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

  _MovieDetailState call(
      {MovieDetailResponse? movie,
      List<MovieResult>? similarList,
      Set<String>? favoriteList,
      bool isFavorite = false}) {
    return _MovieDetailState(
      movie: movie,
      similarList: similarList,
      favoriteList: favoriteList,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
const $MovieDetailState = _$MovieDetailStateTearOff();

/// @nodoc
mixin _$MovieDetailState {
  MovieDetailResponse? get movie => throw _privateConstructorUsedError;
  List<MovieResult>? get similarList => throw _privateConstructorUsedError;
  Set<String>? get favoriteList => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
  $Res call(
      {MovieDetailResponse? movie,
      List<MovieResult>? similarList,
      Set<String>? favoriteList,
      bool isFavorite});

  $MovieDetailResponseCopyWith<$Res>? get movie;
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
    Object? movie = freezed,
    Object? similarList = freezed,
    Object? favoriteList = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailResponse?,
      similarList: similarList == freezed
          ? _value.similarList
          : similarList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      favoriteList: favoriteList == freezed
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MovieDetailResponseCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieDetailResponseCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
abstract class _$MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(
          _MovieDetailState value, $Res Function(_MovieDetailState) then) =
      __$MovieDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MovieDetailResponse? movie,
      List<MovieResult>? similarList,
      Set<String>? favoriteList,
      bool isFavorite});

  @override
  $MovieDetailResponseCopyWith<$Res>? get movie;
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
    Object? movie = freezed,
    Object? similarList = freezed,
    Object? favoriteList = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_MovieDetailState(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailResponse?,
      similarList: similarList == freezed
          ? _value.similarList
          : similarList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      favoriteList: favoriteList == freezed
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState(
      {this.movie,
      this.similarList,
      this.favoriteList,
      this.isFavorite = false});

  @override
  final MovieDetailResponse? movie;
  @override
  final List<MovieResult>? similarList;
  @override
  final Set<String>? favoriteList;
  @JsonKey()
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'MovieDetailState(movie: $movie, similarList: $similarList, favoriteList: $favoriteList, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailState &&
            const DeepCollectionEquality().equals(other.movie, movie) &&
            const DeepCollectionEquality()
                .equals(other.similarList, similarList) &&
            const DeepCollectionEquality()
                .equals(other.favoriteList, favoriteList) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movie),
      const DeepCollectionEquality().hash(similarList),
      const DeepCollectionEquality().hash(favoriteList),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState(
      {MovieDetailResponse? movie,
      List<MovieResult>? similarList,
      Set<String>? favoriteList,
      bool isFavorite}) = _$_MovieDetailState;

  @override
  MovieDetailResponse? get movie;
  @override
  List<MovieResult>? get similarList;
  @override
  Set<String>? get favoriteList;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
