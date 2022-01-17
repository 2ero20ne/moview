// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_similar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieSimilarResponse _$MovieSimilarResponseFromJson(Map<String, dynamic> json) {
  return _MovieSimilarResponse.fromJson(json);
}

/// @nodoc
class _$MovieSimilarResponseTearOff {
  const _$MovieSimilarResponseTearOff();

  _MovieSimilarResponse call(
      {@JsonKey(name: 'page') required int page,
      @JsonKey(name: 'results') required List<MovieResult> results,
      @JsonKey(name: 'total_results') required int totalResults,
      @JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'status_message') String? statusMessage,
      @JsonKey(name: 'status_code') int? statusCode}) {
    return _MovieSimilarResponse(
      page: page,
      results: results,
      totalResults: totalResults,
      totalPages: totalPages,
      statusMessage: statusMessage,
      statusCode: statusCode,
    );
  }

  MovieSimilarResponse fromJson(Map<String, Object?> json) {
    return MovieSimilarResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieSimilarResponse = _$MovieSimilarResponseTearOff();

/// @nodoc
mixin _$MovieSimilarResponse {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieResult> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_message')
  String? get statusMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSimilarResponseCopyWith<MovieSimilarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSimilarResponseCopyWith<$Res> {
  factory $MovieSimilarResponseCopyWith(MovieSimilarResponse value,
          $Res Function(MovieSimilarResponse) then) =
      _$MovieSimilarResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieResult> results,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'status_message') String? statusMessage,
      @JsonKey(name: 'status_code') int? statusCode});
}

/// @nodoc
class _$MovieSimilarResponseCopyWithImpl<$Res>
    implements $MovieSimilarResponseCopyWith<$Res> {
  _$MovieSimilarResponseCopyWithImpl(this._value, this._then);

  final MovieSimilarResponse _value;
  // ignore: unused_field
  final $Res Function(MovieSimilarResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? statusMessage = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MovieSimilarResponseCopyWith<$Res>
    implements $MovieSimilarResponseCopyWith<$Res> {
  factory _$MovieSimilarResponseCopyWith(_MovieSimilarResponse value,
          $Res Function(_MovieSimilarResponse) then) =
      __$MovieSimilarResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieResult> results,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'status_message') String? statusMessage,
      @JsonKey(name: 'status_code') int? statusCode});
}

/// @nodoc
class __$MovieSimilarResponseCopyWithImpl<$Res>
    extends _$MovieSimilarResponseCopyWithImpl<$Res>
    implements _$MovieSimilarResponseCopyWith<$Res> {
  __$MovieSimilarResponseCopyWithImpl(
      _MovieSimilarResponse _value, $Res Function(_MovieSimilarResponse) _then)
      : super(_value, (v) => _then(v as _MovieSimilarResponse));

  @override
  _MovieSimilarResponse get _value => super._value as _MovieSimilarResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? statusMessage = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_MovieSimilarResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieSimilarResponse implements _MovieSimilarResponse {
  _$_MovieSimilarResponse(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'results') required this.results,
      @JsonKey(name: 'total_results') required this.totalResults,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'status_message') this.statusMessage,
      @JsonKey(name: 'status_code') this.statusCode});

  factory _$_MovieSimilarResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieSimilarResponseFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'results')
  final List<MovieResult> results;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'status_message')
  final String? statusMessage;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;

  @override
  String toString() {
    return 'MovieSimilarResponse(page: $page, results: $results, totalResults: $totalResults, totalPages: $totalPages, statusMessage: $statusMessage, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieSimilarResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.statusMessage, statusMessage) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(statusMessage),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$MovieSimilarResponseCopyWith<_MovieSimilarResponse> get copyWith =>
      __$MovieSimilarResponseCopyWithImpl<_MovieSimilarResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieSimilarResponseToJson(this);
  }
}

abstract class _MovieSimilarResponse implements MovieSimilarResponse {
  factory _MovieSimilarResponse(
      {@JsonKey(name: 'page') required int page,
      @JsonKey(name: 'results') required List<MovieResult> results,
      @JsonKey(name: 'total_results') required int totalResults,
      @JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'status_message') String? statusMessage,
      @JsonKey(name: 'status_code') int? statusCode}) = _$_MovieSimilarResponse;

  factory _MovieSimilarResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieSimilarResponse.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieResult> get results;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'status_message')
  String? get statusMessage;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$MovieSimilarResponseCopyWith<_MovieSimilarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
