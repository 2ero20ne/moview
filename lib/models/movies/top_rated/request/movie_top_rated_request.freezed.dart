// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_top_rated_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieTopRatedRequest _$MovieTopRatedRequestFromJson(Map<String, dynamic> json) {
  return _MovieTopRatedRequest.fromJson(json);
}

/// @nodoc
class _$MovieTopRatedRequestTearOff {
  const _$MovieTopRatedRequestTearOff();

  _MovieTopRatedRequest call(
      {@JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region}) {
    return _MovieTopRatedRequest(
      language: language,
      page: page,
      region: region,
    );
  }

  MovieTopRatedRequest fromJson(Map<String, Object?> json) {
    return MovieTopRatedRequest.fromJson(json);
  }
}

/// @nodoc
const $MovieTopRatedRequest = _$MovieTopRatedRequestTearOff();

/// @nodoc
mixin _$MovieTopRatedRequest {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTopRatedRequestCopyWith<MovieTopRatedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTopRatedRequestCopyWith<$Res> {
  factory $MovieTopRatedRequestCopyWith(MovieTopRatedRequest value,
          $Res Function(MovieTopRatedRequest) then) =
      _$MovieTopRatedRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region});
}

/// @nodoc
class _$MovieTopRatedRequestCopyWithImpl<$Res>
    implements $MovieTopRatedRequestCopyWith<$Res> {
  _$MovieTopRatedRequestCopyWithImpl(this._value, this._then);

  final MovieTopRatedRequest _value;
  // ignore: unused_field
  final $Res Function(MovieTopRatedRequest) _then;

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
abstract class _$MovieTopRatedRequestCopyWith<$Res>
    implements $MovieTopRatedRequestCopyWith<$Res> {
  factory _$MovieTopRatedRequestCopyWith(_MovieTopRatedRequest value,
          $Res Function(_MovieTopRatedRequest) then) =
      __$MovieTopRatedRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region});
}

/// @nodoc
class __$MovieTopRatedRequestCopyWithImpl<$Res>
    extends _$MovieTopRatedRequestCopyWithImpl<$Res>
    implements _$MovieTopRatedRequestCopyWith<$Res> {
  __$MovieTopRatedRequestCopyWithImpl(
      _MovieTopRatedRequest _value, $Res Function(_MovieTopRatedRequest) _then)
      : super(_value, (v) => _then(v as _MovieTopRatedRequest));

  @override
  _MovieTopRatedRequest get _value => super._value as _MovieTopRatedRequest;

  @override
  $Res call({
    Object? language = freezed,
    Object? page = freezed,
    Object? region = freezed,
  }) {
    return _then(_MovieTopRatedRequest(
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
class _$_MovieTopRatedRequest implements _MovieTopRatedRequest {
  _$_MovieTopRatedRequest(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'region') this.region});

  factory _$_MovieTopRatedRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MovieTopRatedRequestFromJson(json);

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
    return 'MovieTopRatedRequest(language: $language, page: $page, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieTopRatedRequest &&
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
  _$MovieTopRatedRequestCopyWith<_MovieTopRatedRequest> get copyWith =>
      __$MovieTopRatedRequestCopyWithImpl<_MovieTopRatedRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieTopRatedRequestToJson(this);
  }
}

abstract class _MovieTopRatedRequest implements MovieTopRatedRequest {
  factory _MovieTopRatedRequest(
      {@JsonKey(name: 'language') required String language,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'region') String? region}) = _$_MovieTopRatedRequest;

  factory _MovieTopRatedRequest.fromJson(Map<String, dynamic> json) =
      _$_MovieTopRatedRequest.fromJson;

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
  _$MovieTopRatedRequestCopyWith<_MovieTopRatedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
