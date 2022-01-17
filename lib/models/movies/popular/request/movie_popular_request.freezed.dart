// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_popular_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviePopularRequest _$MoviePopularRequestFromJson(Map<String, dynamic> json) {
  return _MoviePopularRequest.fromJson(json);
}

/// @nodoc
class _$MoviePopularRequestTearOff {
  const _$MoviePopularRequestTearOff();

  _MoviePopularRequest call(
      {@JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region}) {
    return _MoviePopularRequest(
      language: language,
      page: page,
      region: region,
    );
  }

  MoviePopularRequest fromJson(Map<String, Object?> json) {
    return MoviePopularRequest.fromJson(json);
  }
}

/// @nodoc
const $MoviePopularRequest = _$MoviePopularRequestTearOff();

/// @nodoc
mixin _$MoviePopularRequest {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviePopularRequestCopyWith<MoviePopularRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviePopularRequestCopyWith<$Res> {
  factory $MoviePopularRequestCopyWith(
          MoviePopularRequest value, $Res Function(MoviePopularRequest) then) =
      _$MoviePopularRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region});
}

/// @nodoc
class _$MoviePopularRequestCopyWithImpl<$Res>
    implements $MoviePopularRequestCopyWith<$Res> {
  _$MoviePopularRequestCopyWithImpl(this._value, this._then);

  final MoviePopularRequest _value;
  // ignore: unused_field
  final $Res Function(MoviePopularRequest) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? page = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MoviePopularRequestCopyWith<$Res>
    implements $MoviePopularRequestCopyWith<$Res> {
  factory _$MoviePopularRequestCopyWith(_MoviePopularRequest value,
          $Res Function(_MoviePopularRequest) then) =
      __$MoviePopularRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region});
}

/// @nodoc
class __$MoviePopularRequestCopyWithImpl<$Res>
    extends _$MoviePopularRequestCopyWithImpl<$Res>
    implements _$MoviePopularRequestCopyWith<$Res> {
  __$MoviePopularRequestCopyWithImpl(
      _MoviePopularRequest _value, $Res Function(_MoviePopularRequest) _then)
      : super(_value, (v) => _then(v as _MoviePopularRequest));

  @override
  _MoviePopularRequest get _value => super._value as _MoviePopularRequest;

  @override
  $Res call({
    Object? language = freezed,
    Object? page = freezed,
    Object? region = freezed,
  }) {
    return _then(_MoviePopularRequest(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviePopularRequest implements _MoviePopularRequest {
  _$_MoviePopularRequest(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'region') this.region});

  factory _$_MoviePopularRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MoviePopularRequestFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'page')
  final String? page;
  @override
  @JsonKey(name: 'region')
  final String? region;

  @override
  String toString() {
    return 'MoviePopularRequest(language: $language, page: $page, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviePopularRequest &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.region, region));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(region));

  @JsonKey(ignore: true)
  @override
  _$MoviePopularRequestCopyWith<_MoviePopularRequest> get copyWith =>
      __$MoviePopularRequestCopyWithImpl<_MoviePopularRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviePopularRequestToJson(this);
  }
}

abstract class _MoviePopularRequest implements MoviePopularRequest {
  factory _MoviePopularRequest(
      {@JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region}) = _$_MoviePopularRequest;

  factory _MoviePopularRequest.fromJson(Map<String, dynamic> json) =
      _$_MoviePopularRequest.fromJson;

  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$MoviePopularRequestCopyWith<_MoviePopularRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
