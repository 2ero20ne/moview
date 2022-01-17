// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_production_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailProductionCompanies _$MovieDetailProductionCompaniesFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailProductionCompanies.fromJson(json);
}

/// @nodoc
class _$MovieDetailProductionCompaniesTearOff {
  const _$MovieDetailProductionCompaniesTearOff();

  _MovieDetailProductionCompanies call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'id') required int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') required String originCountry}) {
    return _MovieDetailProductionCompanies(
      name: name,
      id: id,
      logoPath: logoPath,
      originCountry: originCountry,
    );
  }

  MovieDetailProductionCompanies fromJson(Map<String, Object?> json) {
    return MovieDetailProductionCompanies.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailProductionCompanies =
    _$MovieDetailProductionCompaniesTearOff();

/// @nodoc
mixin _$MovieDetailProductionCompanies {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailProductionCompaniesCopyWith<MovieDetailProductionCompanies>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailProductionCompaniesCopyWith<$Res> {
  factory $MovieDetailProductionCompaniesCopyWith(
          MovieDetailProductionCompanies value,
          $Res Function(MovieDetailProductionCompanies) then) =
      _$MovieDetailProductionCompaniesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class _$MovieDetailProductionCompaniesCopyWithImpl<$Res>
    implements $MovieDetailProductionCompaniesCopyWith<$Res> {
  _$MovieDetailProductionCompaniesCopyWithImpl(this._value, this._then);

  final MovieDetailProductionCompanies _value;
  // ignore: unused_field
  final $Res Function(MovieDetailProductionCompanies) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailProductionCompaniesCopyWith<$Res>
    implements $MovieDetailProductionCompaniesCopyWith<$Res> {
  factory _$MovieDetailProductionCompaniesCopyWith(
          _MovieDetailProductionCompanies value,
          $Res Function(_MovieDetailProductionCompanies) then) =
      __$MovieDetailProductionCompaniesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$MovieDetailProductionCompaniesCopyWithImpl<$Res>
    extends _$MovieDetailProductionCompaniesCopyWithImpl<$Res>
    implements _$MovieDetailProductionCompaniesCopyWith<$Res> {
  __$MovieDetailProductionCompaniesCopyWithImpl(
      _MovieDetailProductionCompanies _value,
      $Res Function(_MovieDetailProductionCompanies) _then)
      : super(_value, (v) => _then(v as _MovieDetailProductionCompanies));

  @override
  _MovieDetailProductionCompanies get _value =>
      super._value as _MovieDetailProductionCompanies;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_MovieDetailProductionCompanies(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailProductionCompanies
    implements _MovieDetailProductionCompanies {
  _$_MovieDetailProductionCompanies(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      @JsonKey(name: 'origin_country') required this.originCountry});

  factory _$_MovieDetailProductionCompanies.fromJson(
          Map<String, dynamic> json) =>
      _$$_MovieDetailProductionCompaniesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @JsonKey(name: 'origin_country')
  final String originCountry;

  @override
  String toString() {
    return 'MovieDetailProductionCompanies(name: $name, id: $id, logoPath: $logoPath, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailProductionCompanies &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.logoPath, logoPath) &&
            const DeepCollectionEquality()
                .equals(other.originCountry, originCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(logoPath),
      const DeepCollectionEquality().hash(originCountry));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailProductionCompaniesCopyWith<_MovieDetailProductionCompanies>
      get copyWith => __$MovieDetailProductionCompaniesCopyWithImpl<
          _MovieDetailProductionCompanies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailProductionCompaniesToJson(this);
  }
}

abstract class _MovieDetailProductionCompanies
    implements MovieDetailProductionCompanies {
  factory _MovieDetailProductionCompanies(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'id') required int id,
          @JsonKey(name: 'logo_path') String? logoPath,
          @JsonKey(name: 'origin_country') required String originCountry}) =
      _$_MovieDetailProductionCompanies;

  factory _MovieDetailProductionCompanies.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailProductionCompanies.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  @JsonKey(name: 'origin_country')
  String get originCountry;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailProductionCompaniesCopyWith<_MovieDetailProductionCompanies>
      get copyWith => throw _privateConstructorUsedError;
}
