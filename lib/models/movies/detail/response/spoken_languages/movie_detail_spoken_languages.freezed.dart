// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_spoken_languages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailSpokenLanguages _$MovieDetailSpokenLanguagesFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailSpokenLanguages.fromJson(json);
}

/// @nodoc
class _$MovieDetailSpokenLanguagesTearOff {
  const _$MovieDetailSpokenLanguagesTearOff();

  _MovieDetailSpokenLanguages call(
      {@JsonKey(name: 'iso_639_1') required String iso6391,
      @JsonKey(name: 'name') required String name}) {
    return _MovieDetailSpokenLanguages(
      iso6391: iso6391,
      name: name,
    );
  }

  MovieDetailSpokenLanguages fromJson(Map<String, Object?> json) {
    return MovieDetailSpokenLanguages.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailSpokenLanguages = _$MovieDetailSpokenLanguagesTearOff();

/// @nodoc
mixin _$MovieDetailSpokenLanguages {
  @JsonKey(name: 'iso_639_1')
  String get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailSpokenLanguagesCopyWith<MovieDetailSpokenLanguages>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailSpokenLanguagesCopyWith<$Res> {
  factory $MovieDetailSpokenLanguagesCopyWith(MovieDetailSpokenLanguages value,
          $Res Function(MovieDetailSpokenLanguages) then) =
      _$MovieDetailSpokenLanguagesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_639_1') String iso6391,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$MovieDetailSpokenLanguagesCopyWithImpl<$Res>
    implements $MovieDetailSpokenLanguagesCopyWith<$Res> {
  _$MovieDetailSpokenLanguagesCopyWithImpl(this._value, this._then);

  final MovieDetailSpokenLanguages _value;
  // ignore: unused_field
  final $Res Function(MovieDetailSpokenLanguages) _then;

  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso6391: iso6391 == freezed
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailSpokenLanguagesCopyWith<$Res>
    implements $MovieDetailSpokenLanguagesCopyWith<$Res> {
  factory _$MovieDetailSpokenLanguagesCopyWith(
          _MovieDetailSpokenLanguages value,
          $Res Function(_MovieDetailSpokenLanguages) then) =
      __$MovieDetailSpokenLanguagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_639_1') String iso6391,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$MovieDetailSpokenLanguagesCopyWithImpl<$Res>
    extends _$MovieDetailSpokenLanguagesCopyWithImpl<$Res>
    implements _$MovieDetailSpokenLanguagesCopyWith<$Res> {
  __$MovieDetailSpokenLanguagesCopyWithImpl(_MovieDetailSpokenLanguages _value,
      $Res Function(_MovieDetailSpokenLanguages) _then)
      : super(_value, (v) => _then(v as _MovieDetailSpokenLanguages));

  @override
  _MovieDetailSpokenLanguages get _value =>
      super._value as _MovieDetailSpokenLanguages;

  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_MovieDetailSpokenLanguages(
      iso6391: iso6391 == freezed
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
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
class _$_MovieDetailSpokenLanguages implements _MovieDetailSpokenLanguages {
  _$_MovieDetailSpokenLanguages(
      {@JsonKey(name: 'iso_639_1') required this.iso6391,
      @JsonKey(name: 'name') required this.name});

  factory _$_MovieDetailSpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailSpokenLanguagesFromJson(json);

  @override
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'MovieDetailSpokenLanguages(iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailSpokenLanguages &&
            const DeepCollectionEquality().equals(other.iso6391, iso6391) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iso6391),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailSpokenLanguagesCopyWith<_MovieDetailSpokenLanguages>
      get copyWith => __$MovieDetailSpokenLanguagesCopyWithImpl<
          _MovieDetailSpokenLanguages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailSpokenLanguagesToJson(this);
  }
}

abstract class _MovieDetailSpokenLanguages
    implements MovieDetailSpokenLanguages {
  factory _MovieDetailSpokenLanguages(
          {@JsonKey(name: 'iso_639_1') required String iso6391,
          @JsonKey(name: 'name') required String name}) =
      _$_MovieDetailSpokenLanguages;

  factory _MovieDetailSpokenLanguages.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailSpokenLanguages.fromJson;

  @override
  @JsonKey(name: 'iso_639_1')
  String get iso6391;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailSpokenLanguagesCopyWith<_MovieDetailSpokenLanguages>
      get copyWith => throw _privateConstructorUsedError;
}
