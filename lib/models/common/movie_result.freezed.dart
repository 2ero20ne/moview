// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
class _$MovieResultTearOff {
  const _$MovieResultTearOff();

  _MovieResult call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'adult') required bool adult,
      @JsonKey(name: 'overview') required String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') required List<int> genreIds,
      @JsonKey(name: 'id') required int id,
      @JsonKey(name: 'original_title') required String originalTitle,
      @JsonKey(name: 'original_language') required String originalLanguage,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'popularity') required double popularity,
      @JsonKey(name: 'vote_count') required int voteCount,
      @JsonKey(name: 'video') required bool video,
      @JsonKey(name: 'vote_average') required double voteAverage}) {
    return _MovieResult(
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      id: id,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      title: title,
      backdropPath: backdropPath,
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }

  MovieResult fromJson(Map<String, Object?> json) {
    return MovieResult.fromJson(json);
  }
}

/// @nodoc
const $MovieResult = _$MovieResultTearOff();

/// @nodoc
mixin _$MovieResult {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res> implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  final MovieResult _value;
  // ignore: unused_field
  final $Res Function(MovieResult) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MovieResultCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$MovieResultCopyWith(
          _MovieResult value, $Res Function(_MovieResult) then) =
      __$MovieResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class __$MovieResultCopyWithImpl<$Res> extends _$MovieResultCopyWithImpl<$Res>
    implements _$MovieResultCopyWith<$Res> {
  __$MovieResultCopyWithImpl(
      _MovieResult _value, $Res Function(_MovieResult) _then)
      : super(_value, (v) => _then(v as _MovieResult));

  @override
  _MovieResult get _value => super._value as _MovieResult;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_MovieResult(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResult implements _MovieResult {
  _$_MovieResult(
      {@JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'adult') required this.adult,
      @JsonKey(name: 'overview') required this.overview,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'genre_ids') required this.genreIds,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'video') required this.video,
      @JsonKey(name: 'vote_average') required this.voteAverage});

  factory _$_MovieResult.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResultFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'overview')
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'video')
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @override
  String toString() {
    return 'MovieResult(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieResult &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.genreIds, genreIds) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(genreIds),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(voteAverage));

  @JsonKey(ignore: true)
  @override
  _$MovieResultCopyWith<_MovieResult> get copyWith =>
      __$MovieResultCopyWithImpl<_MovieResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResultToJson(this);
  }
}

abstract class _MovieResult implements MovieResult {
  factory _MovieResult(
          {@JsonKey(name: 'poster_path') String? posterPath,
          @JsonKey(name: 'adult') required bool adult,
          @JsonKey(name: 'overview') required String overview,
          @JsonKey(name: 'release_date') String? releaseDate,
          @JsonKey(name: 'genre_ids') required List<int> genreIds,
          @JsonKey(name: 'id') required int id,
          @JsonKey(name: 'original_title') required String originalTitle,
          @JsonKey(name: 'original_language') required String originalLanguage,
          @JsonKey(name: 'title') required String title,
          @JsonKey(name: 'backdrop_path') String? backdropPath,
          @JsonKey(name: 'popularity') required double popularity,
          @JsonKey(name: 'vote_count') required int voteCount,
          @JsonKey(name: 'video') required bool video,
          @JsonKey(name: 'vote_average') required double voteAverage}) =
      _$_MovieResult;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$_MovieResult.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'video')
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$MovieResultCopyWith<_MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}
