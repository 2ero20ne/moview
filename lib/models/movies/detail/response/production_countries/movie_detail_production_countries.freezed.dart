// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_production_countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailProductionCountries _$MovieDetailProductionCountriesFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailProductionCountries.fromJson(json);
}

/// @nodoc
class _$MovieDetailProductionCountriesTearOff {
  const _$MovieDetailProductionCountriesTearOff();

  _MovieDetailProductionCountries call(
      {@JsonKey(name: 'iso_3166_1') required String iso31661,
      @JsonKey(name: 'name') required String name}) {
    return _MovieDetailProductionCountries(
      iso31661: iso31661,
      name: name,
    );
  }

  MovieDetailProductionCountries fromJson(Map<String, Object?> json) {
    return MovieDetailProductionCountries.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailProductionCountries =
    _$MovieDetailProductionCountriesTearOff();

/// @nodoc
mixin _$MovieDetailProductionCountries {
  @JsonKey(name: 'iso_3166_1')
  String get iso31661 => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailProductionCountriesCopyWith<MovieDetailProductionCountries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailProductionCountriesCopyWith<$Res> {
  factory $MovieDetailProductionCountriesCopyWith(
          MovieDetailProductionCountries value,
          $Res Function(MovieDetailProductionCountries) then) =
      _$MovieDetailProductionCountriesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String iso31661,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$MovieDetailProductionCountriesCopyWithImpl<$Res>
    implements $MovieDetailProductionCountriesCopyWith<$Res> {
  _$MovieDetailProductionCountriesCopyWithImpl(this._value, this._then);

  final MovieDetailProductionCountries _value;
  // ignore: unused_field
  final $Res Function(MovieDetailProductionCountries) _then;

  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailProductionCountriesCopyWith<$Res>
    implements $MovieDetailProductionCountriesCopyWith<$Res> {
  factory _$MovieDetailProductionCountriesCopyWith(
          _MovieDetailProductionCountries value,
          $Res Function(_MovieDetailProductionCountries) then) =
      __$MovieDetailProductionCountriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String iso31661,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$MovieDetailProductionCountriesCopyWithImpl<$Res>
    extends _$MovieDetailProductionCountriesCopyWithImpl<$Res>
    implements _$MovieDetailProductionCountriesCopyWith<$Res> {
  __$MovieDetailProductionCountriesCopyWithImpl(
      _MovieDetailProductionCountries _value,
      $Res Function(_MovieDetailProductionCountries) _then)
      : super(_value, (v) => _then(v as _MovieDetailProductionCountries));

  @override
  _MovieDetailProductionCountries get _value =>
      super._value as _MovieDetailProductionCountries;

  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_MovieDetailProductionCountries(
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailProductionCountries
    implements _MovieDetailProductionCountries {
  _$_MovieDetailProductionCountries(
      {@JsonKey(name: 'iso_3166_1') required this.iso31661,
      @JsonKey(name: 'name') required this.name});

  factory _$_MovieDetailProductionCountries.fromJson(
          Map<String, dynamic> json) =>
      _$$_MovieDetailProductionCountriesFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'MovieDetailProductionCountries(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailProductionCountries &&
            const DeepCollectionEquality().equals(other.iso31661, iso31661) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iso31661),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailProductionCountriesCopyWith<_MovieDetailProductionCountries>
      get copyWith => __$MovieDetailProductionCountriesCopyWithImpl<
          _MovieDetailProductionCountries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailProductionCountriesToJson(this);
  }
}

abstract class _MovieDetailProductionCountries
    implements MovieDetailProductionCountries {
  factory _MovieDetailProductionCountries(
          {@JsonKey(name: 'iso_3166_1') required String iso31661,
          @JsonKey(name: 'name') required String name}) =
      _$_MovieDetailProductionCountries;

  factory _MovieDetailProductionCountries.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailProductionCountries.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String get iso31661;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailProductionCountriesCopyWith<_MovieDetailProductionCountries>
      get copyWith => throw _privateConstructorUsedError;
}
