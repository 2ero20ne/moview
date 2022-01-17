// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_movie_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchMovieRequest _$SearchMovieRequestFromJson(Map<String, dynamic> json) {
  return _SearchMovieRequest.fromJson(json);
}

/// @nodoc
class _$SearchMovieRequestTearOff {
  const _$SearchMovieRequestTearOff();

  _SearchMovieRequest call(
      {@JsonKey(name: 'language') required String language,
      @JsonKey(name: 'query') required String query,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'include_adult') String? includeAdult,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'primary_release_year') String? primaryReleaseYear}) {
    return _SearchMovieRequest(
      language: language,
      query: query,
      page: page,
      includeAdult: includeAdult,
      region: region,
      year: year,
      primaryReleaseYear: primaryReleaseYear,
    );
  }

  SearchMovieRequest fromJson(Map<String, Object?> json) {
    return SearchMovieRequest.fromJson(json);
  }
}

/// @nodoc
const $SearchMovieRequest = _$SearchMovieRequestTearOff();

/// @nodoc
mixin _$SearchMovieRequest {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'query')
  String get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'include_adult')
  String? get includeAdult => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_release_year')
  String? get primaryReleaseYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchMovieRequestCopyWith<SearchMovieRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieRequestCopyWith<$Res> {
  factory $SearchMovieRequestCopyWith(
          SearchMovieRequest value, $Res Function(SearchMovieRequest) then) =
      _$SearchMovieRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'query') String query,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'include_adult') String? includeAdult,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'primary_release_year') String? primaryReleaseYear});
}

/// @nodoc
class _$SearchMovieRequestCopyWithImpl<$Res>
    implements $SearchMovieRequestCopyWith<$Res> {
  _$SearchMovieRequestCopyWithImpl(this._value, this._then);

  final SearchMovieRequest _value;
  // ignore: unused_field
  final $Res Function(SearchMovieRequest) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? query = freezed,
    Object? page = freezed,
    Object? includeAdult = freezed,
    Object? region = freezed,
    Object? year = freezed,
    Object? primaryReleaseYear = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: includeAdult == freezed
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryReleaseYear: primaryReleaseYear == freezed
          ? _value.primaryReleaseYear
          : primaryReleaseYear // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchMovieRequestCopyWith<$Res>
    implements $SearchMovieRequestCopyWith<$Res> {
  factory _$SearchMovieRequestCopyWith(
          _SearchMovieRequest value, $Res Function(_SearchMovieRequest) then) =
      __$SearchMovieRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'query') String query,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'include_adult') String? includeAdult,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'primary_release_year') String? primaryReleaseYear});
}

/// @nodoc
class __$SearchMovieRequestCopyWithImpl<$Res>
    extends _$SearchMovieRequestCopyWithImpl<$Res>
    implements _$SearchMovieRequestCopyWith<$Res> {
  __$SearchMovieRequestCopyWithImpl(
      _SearchMovieRequest _value, $Res Function(_SearchMovieRequest) _then)
      : super(_value, (v) => _then(v as _SearchMovieRequest));

  @override
  _SearchMovieRequest get _value => super._value as _SearchMovieRequest;

  @override
  $Res call({
    Object? language = freezed,
    Object? query = freezed,
    Object? page = freezed,
    Object? includeAdult = freezed,
    Object? region = freezed,
    Object? year = freezed,
    Object? primaryReleaseYear = freezed,
  }) {
    return _then(_SearchMovieRequest(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: includeAdult == freezed
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryReleaseYear: primaryReleaseYear == freezed
          ? _value.primaryReleaseYear
          : primaryReleaseYear // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchMovieRequest implements _SearchMovieRequest {
  _$_SearchMovieRequest(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'query') required this.query,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'include_adult') this.includeAdult,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'primary_release_year') this.primaryReleaseYear});

  factory _$_SearchMovieRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SearchMovieRequestFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'query')
  final String query;
  @override
  @JsonKey(name: 'page')
  final String? page;
  @override
  @JsonKey(name: 'include_adult')
  final String? includeAdult;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'year')
  final String? year;
  @override
  @JsonKey(name: 'primary_release_year')
  final String? primaryReleaseYear;

  @override
  String toString() {
    return 'SearchMovieRequest(language: $language, query: $query, page: $page, includeAdult: $includeAdult, region: $region, year: $year, primaryReleaseYear: $primaryReleaseYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovieRequest &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.includeAdult, includeAdult) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.primaryReleaseYear, primaryReleaseYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(includeAdult),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(primaryReleaseYear));

  @JsonKey(ignore: true)
  @override
  _$SearchMovieRequestCopyWith<_SearchMovieRequest> get copyWith =>
      __$SearchMovieRequestCopyWithImpl<_SearchMovieRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchMovieRequestToJson(this);
  }
}

abstract class _SearchMovieRequest implements SearchMovieRequest {
  factory _SearchMovieRequest(
          {@JsonKey(name: 'language') required String language,
          @JsonKey(name: 'query') required String query,
          @JsonKey(name: 'page') String? page,
          @JsonKey(name: 'include_adult') String? includeAdult,
          @JsonKey(name: 'region') String? region,
          @JsonKey(name: 'year') String? year,
          @JsonKey(name: 'primary_release_year') String? primaryReleaseYear}) =
      _$_SearchMovieRequest;

  factory _SearchMovieRequest.fromJson(Map<String, dynamic> json) =
      _$_SearchMovieRequest.fromJson;

  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'query')
  String get query;
  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(name: 'include_adult')
  String? get includeAdult;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'year')
  String? get year;
  @override
  @JsonKey(name: 'primary_release_year')
  String? get primaryReleaseYear;
  @override
  @JsonKey(ignore: true)
  _$SearchMovieRequestCopyWith<_SearchMovieRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
