// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_genres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailGenres _$MovieDetailGenresFromJson(Map<String, dynamic> json) {
  return _MovieDetailGenres.fromJson(json);
}

/// @nodoc
class _$MovieDetailGenresTearOff {
  const _$MovieDetailGenresTearOff();

  _MovieDetailGenres call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name}) {
    return _MovieDetailGenres(
      id: id,
      name: name,
    );
  }

  MovieDetailGenres fromJson(Map<String, Object?> json) {
    return MovieDetailGenres.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailGenres = _$MovieDetailGenresTearOff();

/// @nodoc
mixin _$MovieDetailGenres {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailGenresCopyWith<MovieDetailGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailGenresCopyWith<$Res> {
  factory $MovieDetailGenresCopyWith(
          MovieDetailGenres value, $Res Function(MovieDetailGenres) then) =
      _$MovieDetailGenresCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$MovieDetailGenresCopyWithImpl<$Res>
    implements $MovieDetailGenresCopyWith<$Res> {
  _$MovieDetailGenresCopyWithImpl(this._value, this._then);

  final MovieDetailGenres _value;
  // ignore: unused_field
  final $Res Function(MovieDetailGenres) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailGenresCopyWith<$Res>
    implements $MovieDetailGenresCopyWith<$Res> {
  factory _$MovieDetailGenresCopyWith(
          _MovieDetailGenres value, $Res Function(_MovieDetailGenres) then) =
      __$MovieDetailGenresCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$MovieDetailGenresCopyWithImpl<$Res>
    extends _$MovieDetailGenresCopyWithImpl<$Res>
    implements _$MovieDetailGenresCopyWith<$Res> {
  __$MovieDetailGenresCopyWithImpl(
      _MovieDetailGenres _value, $Res Function(_MovieDetailGenres) _then)
      : super(_value, (v) => _then(v as _MovieDetailGenres));

  @override
  _MovieDetailGenres get _value => super._value as _MovieDetailGenres;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_MovieDetailGenres(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailGenres implements _MovieDetailGenres {
  _$_MovieDetailGenres(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name});

  factory _$_MovieDetailGenres.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailGenresFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'MovieDetailGenres(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailGenres &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailGenresCopyWith<_MovieDetailGenres> get copyWith =>
      __$MovieDetailGenresCopyWithImpl<_MovieDetailGenres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailGenresToJson(this);
  }
}

abstract class _MovieDetailGenres implements MovieDetailGenres {
  factory _MovieDetailGenres(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name}) = _$_MovieDetailGenres;

  factory _MovieDetailGenres.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailGenres.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailGenresCopyWith<_MovieDetailGenres> get copyWith =>
      throw _privateConstructorUsedError;
}
