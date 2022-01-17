// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {TextEditingController? searchTextController,
      List<MovieResult>? movieList,
      int updateView = 0}) {
    return _SearchState(
      searchTextController: searchTextController,
      movieList: movieList,
      updateView: updateView,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  TextEditingController? get searchTextController =>
      throw _privateConstructorUsedError;
  List<MovieResult>? get movieList => throw _privateConstructorUsedError;
  int get updateView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController? searchTextController,
      List<MovieResult>? movieList,
      int updateView});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchTextController = freezed,
    Object? movieList = freezed,
    Object? updateView = freezed,
  }) {
    return _then(_value.copyWith(
      searchTextController: searchTextController == freezed
          ? _value.searchTextController
          : searchTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      updateView: updateView == freezed
          ? _value.updateView
          : updateView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController? searchTextController,
      List<MovieResult>? movieList,
      int updateView});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? searchTextController = freezed,
    Object? movieList = freezed,
    Object? updateView = freezed,
  }) {
    return _then(_SearchState(
      searchTextController: searchTextController == freezed
          ? _value.searchTextController
          : searchTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>?,
      updateView: updateView == freezed
          ? _value.updateView
          : updateView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {this.searchTextController, this.movieList, this.updateView = 0});

  @override
  final TextEditingController? searchTextController;
  @override
  final List<MovieResult>? movieList;
  @JsonKey()
  @override
  final int updateView;

  @override
  String toString() {
    return 'SearchState(searchTextController: $searchTextController, movieList: $movieList, updateView: $updateView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality()
                .equals(other.searchTextController, searchTextController) &&
            const DeepCollectionEquality().equals(other.movieList, movieList) &&
            const DeepCollectionEquality()
                .equals(other.updateView, updateView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchTextController),
      const DeepCollectionEquality().hash(movieList),
      const DeepCollectionEquality().hash(updateView));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {TextEditingController? searchTextController,
      List<MovieResult>? movieList,
      int updateView}) = _$_SearchState;

  @override
  TextEditingController? get searchTextController;
  @override
  List<MovieResult>? get movieList;
  @override
  int get updateView;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
