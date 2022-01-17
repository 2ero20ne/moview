// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailRequest _$MovieDetailRequestFromJson(Map<String, dynamic> json) {
  return _MovieDetailRequest.fromJson(json);
}

/// @nodoc
class _$MovieDetailRequestTearOff {
  const _$MovieDetailRequestTearOff();

  _MovieDetailRequest call(
      {@JsonKey(name: 'movie_id') required String movieId,
      @JsonKey(name: 'language') required String language}) {
    return _MovieDetailRequest(
      movieId: movieId,
      language: language,
    );
  }

  MovieDetailRequest fromJson(Map<String, Object?> json) {
    return MovieDetailRequest.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailRequest = _$MovieDetailRequestTearOff();

/// @nodoc
mixin _$MovieDetailRequest {
  @JsonKey(name: 'movie_id')
  String get movieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailRequestCopyWith<MovieDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailRequestCopyWith<$Res> {
  factory $MovieDetailRequestCopyWith(
          MovieDetailRequest value, $Res Function(MovieDetailRequest) then) =
      _$MovieDetailRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'movie_id') String movieId,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class _$MovieDetailRequestCopyWithImpl<$Res>
    implements $MovieDetailRequestCopyWith<$Res> {
  _$MovieDetailRequestCopyWithImpl(this._value, this._then);

  final MovieDetailRequest _value;
  // ignore: unused_field
  final $Res Function(MovieDetailRequest) _then;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailRequestCopyWith<$Res>
    implements $MovieDetailRequestCopyWith<$Res> {
  factory _$MovieDetailRequestCopyWith(
          _MovieDetailRequest value, $Res Function(_MovieDetailRequest) then) =
      __$MovieDetailRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'movie_id') String movieId,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class __$MovieDetailRequestCopyWithImpl<$Res>
    extends _$MovieDetailRequestCopyWithImpl<$Res>
    implements _$MovieDetailRequestCopyWith<$Res> {
  __$MovieDetailRequestCopyWithImpl(
      _MovieDetailRequest _value, $Res Function(_MovieDetailRequest) _then)
      : super(_value, (v) => _then(v as _MovieDetailRequest));

  @override
  _MovieDetailRequest get _value => super._value as _MovieDetailRequest;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? language = freezed,
  }) {
    return _then(_MovieDetailRequest(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailRequest implements _MovieDetailRequest {
  _$_MovieDetailRequest(
      {@JsonKey(name: 'movie_id') required this.movieId,
      @JsonKey(name: 'language') required this.language});

  factory _$_MovieDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailRequestFromJson(json);

  @override
  @JsonKey(name: 'movie_id')
  final String movieId;
  @override
  @JsonKey(name: 'language')
  final String language;

  @override
  String toString() {
    return 'MovieDetailRequest(movieId: $movieId, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailRequest &&
            const DeepCollectionEquality().equals(other.movieId, movieId) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieId),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailRequestCopyWith<_MovieDetailRequest> get copyWith =>
      __$MovieDetailRequestCopyWithImpl<_MovieDetailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailRequestToJson(this);
  }
}

abstract class _MovieDetailRequest implements MovieDetailRequest {
  factory _MovieDetailRequest(
          {@JsonKey(name: 'movie_id') required String movieId,
          @JsonKey(name: 'language') required String language}) =
      _$_MovieDetailRequest;

  factory _MovieDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailRequest.fromJson;

  @override
  @JsonKey(name: 'movie_id')
  String get movieId;
  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailRequestCopyWith<_MovieDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
