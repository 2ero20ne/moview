// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_similar_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieSimilarRequest _$MovieSimilarRequestFromJson(Map<String, dynamic> json) {
  return _MovieSimilarRequest.fromJson(json);
}

/// @nodoc
class _$MovieSimilarRequestTearOff {
  const _$MovieSimilarRequestTearOff();

  _MovieSimilarRequest call(
      {@JsonKey(name: 'movie_id') required String movieId,
      @JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page}) {
    return _MovieSimilarRequest(
      movieId: movieId,
      language: language,
      page: page,
    );
  }

  MovieSimilarRequest fromJson(Map<String, Object?> json) {
    return MovieSimilarRequest.fromJson(json);
  }
}

/// @nodoc
const $MovieSimilarRequest = _$MovieSimilarRequestTearOff();

/// @nodoc
mixin _$MovieSimilarRequest {
  @JsonKey(name: 'movie_id')
  String get movieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSimilarRequestCopyWith<MovieSimilarRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSimilarRequestCopyWith<$Res> {
  factory $MovieSimilarRequestCopyWith(
          MovieSimilarRequest value, $Res Function(MovieSimilarRequest) then) =
      _$MovieSimilarRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'movie_id') String movieId,
      @JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page});
}

/// @nodoc
class _$MovieSimilarRequestCopyWithImpl<$Res>
    implements $MovieSimilarRequestCopyWith<$Res> {
  _$MovieSimilarRequestCopyWithImpl(this._value, this._then);

  final MovieSimilarRequest _value;
  // ignore: unused_field
  final $Res Function(MovieSimilarRequest) _then;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? language = freezed,
    Object? page = freezed,
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
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MovieSimilarRequestCopyWith<$Res>
    implements $MovieSimilarRequestCopyWith<$Res> {
  factory _$MovieSimilarRequestCopyWith(_MovieSimilarRequest value,
          $Res Function(_MovieSimilarRequest) then) =
      __$MovieSimilarRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'movie_id') String movieId,
      @JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page});
}

/// @nodoc
class __$MovieSimilarRequestCopyWithImpl<$Res>
    extends _$MovieSimilarRequestCopyWithImpl<$Res>
    implements _$MovieSimilarRequestCopyWith<$Res> {
  __$MovieSimilarRequestCopyWithImpl(
      _MovieSimilarRequest _value, $Res Function(_MovieSimilarRequest) _then)
      : super(_value, (v) => _then(v as _MovieSimilarRequest));

  @override
  _MovieSimilarRequest get _value => super._value as _MovieSimilarRequest;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? language = freezed,
    Object? page = freezed,
  }) {
    return _then(_MovieSimilarRequest(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieSimilarRequest implements _MovieSimilarRequest {
  _$_MovieSimilarRequest(
      {@JsonKey(name: 'movie_id') required this.movieId,
      @JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'page') this.page});

  factory _$_MovieSimilarRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MovieSimilarRequestFromJson(json);

  @override
  @JsonKey(name: 'movie_id')
  final String movieId;
  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'page')
  final String? page;

  @override
  String toString() {
    return 'MovieSimilarRequest(movieId: $movieId, language: $language, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieSimilarRequest &&
            const DeepCollectionEquality().equals(other.movieId, movieId) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieId),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$MovieSimilarRequestCopyWith<_MovieSimilarRequest> get copyWith =>
      __$MovieSimilarRequestCopyWithImpl<_MovieSimilarRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieSimilarRequestToJson(this);
  }
}

abstract class _MovieSimilarRequest implements MovieSimilarRequest {
  factory _MovieSimilarRequest(
      {@JsonKey(name: 'movie_id') required String movieId,
      @JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page}) = _$_MovieSimilarRequest;

  factory _MovieSimilarRequest.fromJson(Map<String, dynamic> json) =
      _$_MovieSimilarRequest.fromJson;

  @override
  @JsonKey(name: 'movie_id')
  String get movieId;
  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(ignore: true)
  _$MovieSimilarRequestCopyWith<_MovieSimilarRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
