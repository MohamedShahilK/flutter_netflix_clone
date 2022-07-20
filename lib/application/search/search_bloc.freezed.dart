// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchIdle,
    required TResult Function(String movieName) getSearchResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSearchIdle value) getSearchIdle,
    required TResult Function(_getSearchResp value) getSearchResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_getSearchIdleCopyWith<$Res> {
  factory _$$_getSearchIdleCopyWith(
          _$_getSearchIdle value, $Res Function(_$_getSearchIdle) then) =
      __$$_getSearchIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSearchIdleCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_getSearchIdleCopyWith<$Res> {
  __$$_getSearchIdleCopyWithImpl(
      _$_getSearchIdle _value, $Res Function(_$_getSearchIdle) _then)
      : super(_value, (v) => _then(v as _$_getSearchIdle));

  @override
  _$_getSearchIdle get _value => super._value as _$_getSearchIdle;
}

/// @nodoc

class _$_getSearchIdle implements _getSearchIdle {
  const _$_getSearchIdle();

  @override
  String toString() {
    return 'SearchEvent.getSearchIdle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getSearchIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchIdle,
    required TResult Function(String movieName) getSearchResp,
  }) {
    return getSearchIdle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
  }) {
    return getSearchIdle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
    required TResult orElse(),
  }) {
    if (getSearchIdle != null) {
      return getSearchIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSearchIdle value) getSearchIdle,
    required TResult Function(_getSearchResp value) getSearchResp,
  }) {
    return getSearchIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
  }) {
    return getSearchIdle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
    required TResult orElse(),
  }) {
    if (getSearchIdle != null) {
      return getSearchIdle(this);
    }
    return orElse();
  }
}

abstract class _getSearchIdle implements SearchEvent {
  const factory _getSearchIdle() = _$_getSearchIdle;
}

/// @nodoc
abstract class _$$_getSearchRespCopyWith<$Res> {
  factory _$$_getSearchRespCopyWith(
          _$_getSearchResp value, $Res Function(_$_getSearchResp) then) =
      __$$_getSearchRespCopyWithImpl<$Res>;
  $Res call({String movieName});
}

/// @nodoc
class __$$_getSearchRespCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_getSearchRespCopyWith<$Res> {
  __$$_getSearchRespCopyWithImpl(
      _$_getSearchResp _value, $Res Function(_$_getSearchResp) _then)
      : super(_value, (v) => _then(v as _$_getSearchResp));

  @override
  _$_getSearchResp get _value => super._value as _$_getSearchResp;

  @override
  $Res call({
    Object? movieName = freezed,
  }) {
    return _then(_$_getSearchResp(
      movieName: movieName == freezed
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getSearchResp implements _getSearchResp {
  const _$_getSearchResp({required this.movieName});

  @override
  final String movieName;

  @override
  String toString() {
    return 'SearchEvent.getSearchResp(movieName: $movieName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getSearchResp &&
            const DeepCollectionEquality().equals(other.movieName, movieName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieName));

  @JsonKey(ignore: true)
  @override
  _$$_getSearchRespCopyWith<_$_getSearchResp> get copyWith =>
      __$$_getSearchRespCopyWithImpl<_$_getSearchResp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSearchIdle,
    required TResult Function(String movieName) getSearchResp,
  }) {
    return getSearchResp(movieName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
  }) {
    return getSearchResp?.call(movieName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSearchIdle,
    TResult Function(String movieName)? getSearchResp,
    required TResult orElse(),
  }) {
    if (getSearchResp != null) {
      return getSearchResp(movieName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSearchIdle value) getSearchIdle,
    required TResult Function(_getSearchResp value) getSearchResp,
  }) {
    return getSearchResp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
  }) {
    return getSearchResp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSearchIdle value)? getSearchIdle,
    TResult Function(_getSearchResp value)? getSearchResp,
    required TResult orElse(),
  }) {
    if (getSearchResp != null) {
      return getSearchResp(this);
    }
    return orElse();
  }
}

abstract class _getSearchResp implements SearchEvent {
  const factory _getSearchResp({required final String movieName}) =
      _$_getSearchResp;

  String get movieName;
  @JsonKey(ignore: true)
  _$$_getSearchRespCopyWith<_$_getSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchIdleData> get searchIdleResult =>
      throw _privateConstructorUsedError;
  List<SearchResultData> get searchRespResult =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isSearchIdle => throw _privateConstructorUsedError;

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
      {List<SearchIdleData> searchIdleResult,
      List<SearchResultData> searchRespResult,
      bool isLoading,
      bool isError,
      bool isSearchIdle});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchIdleResult = freezed,
    Object? searchRespResult = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? isSearchIdle = freezed,
  }) {
    return _then(_value.copyWith(
      searchIdleResult: searchIdleResult == freezed
          ? _value.searchIdleResult
          : searchIdleResult // ignore: cast_nullable_to_non_nullable
              as List<SearchIdleData>,
      searchRespResult: searchRespResult == freezed
          ? _value.searchRespResult
          : searchRespResult // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchIdle: isSearchIdle == freezed
          ? _value.isSearchIdle
          : isSearchIdle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchIdleData> searchIdleResult,
      List<SearchResultData> searchRespResult,
      bool isLoading,
      bool isError,
      bool isSearchIdle});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? searchIdleResult = freezed,
    Object? searchRespResult = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? isSearchIdle = freezed,
  }) {
    return _then(_$_SearchState(
      searchIdleResult: searchIdleResult == freezed
          ? _value._searchIdleResult
          : searchIdleResult // ignore: cast_nullable_to_non_nullable
              as List<SearchIdleData>,
      searchRespResult: searchRespResult == freezed
          ? _value._searchRespResult
          : searchRespResult // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchIdle: isSearchIdle == freezed
          ? _value.isSearchIdle
          : isSearchIdle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchIdleData> searchIdleResult,
      required final List<SearchResultData> searchRespResult,
      required this.isLoading,
      required this.isError,
      required this.isSearchIdle})
      : _searchIdleResult = searchIdleResult,
        _searchRespResult = searchRespResult;

  final List<SearchIdleData> _searchIdleResult;
  @override
  List<SearchIdleData> get searchIdleResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchIdleResult);
  }

  final List<SearchResultData> _searchRespResult;
  @override
  List<SearchResultData> get searchRespResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchRespResult);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isSearchIdle;

  @override
  String toString() {
    return 'SearchState(searchIdleResult: $searchIdleResult, searchRespResult: $searchRespResult, isLoading: $isLoading, isError: $isError, isSearchIdle: $isSearchIdle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchIdleResult, _searchIdleResult) &&
            const DeepCollectionEquality()
                .equals(other._searchRespResult, _searchRespResult) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.isSearchIdle, isSearchIdle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchIdleResult),
      const DeepCollectionEquality().hash(_searchRespResult),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(isSearchIdle));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchIdleData> searchIdleResult,
      required final List<SearchResultData> searchRespResult,
      required final bool isLoading,
      required final bool isError,
      required final bool isSearchIdle}) = _$_SearchState;

  @override
  List<SearchIdleData> get searchIdleResult;
  @override
  List<SearchResultData> get searchRespResult;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isSearchIdle;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
