// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fastlaugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastlaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getProfileImage value) getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getProfileImage value)? getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getProfileImage value)? getProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughEventCopyWith<$Res> {
  factory $FastlaughEventCopyWith(
          FastlaughEvent value, $Res Function(FastlaughEvent) then) =
      _$FastlaughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastlaughEventCopyWithImpl<$Res>
    implements $FastlaughEventCopyWith<$Res> {
  _$FastlaughEventCopyWithImpl(this._value, this._then);

  final FastlaughEvent _value;
  // ignore: unused_field
  final $Res Function(FastlaughEvent) _then;
}

/// @nodoc
abstract class _$$_getProfileImageCopyWith<$Res> {
  factory _$$_getProfileImageCopyWith(
          _$_getProfileImage value, $Res Function(_$_getProfileImage) then) =
      __$$_getProfileImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getProfileImageCopyWithImpl<$Res>
    extends _$FastlaughEventCopyWithImpl<$Res>
    implements _$$_getProfileImageCopyWith<$Res> {
  __$$_getProfileImageCopyWithImpl(
      _$_getProfileImage _value, $Res Function(_$_getProfileImage) _then)
      : super(_value, (v) => _then(v as _$_getProfileImage));

  @override
  _$_getProfileImage get _value => super._value as _$_getProfileImage;
}

/// @nodoc

class _$_getProfileImage
    with DiagnosticableTreeMixin
    implements _getProfileImage {
  const _$_getProfileImage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastlaughEvent.getProfileImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FastlaughEvent.getProfileImage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getProfileImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileImage,
  }) {
    return getProfileImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileImage,
  }) {
    return getProfileImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (getProfileImage != null) {
      return getProfileImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getProfileImage value) getProfileImage,
  }) {
    return getProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getProfileImage value)? getProfileImage,
  }) {
    return getProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getProfileImage value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (getProfileImage != null) {
      return getProfileImage(this);
    }
    return orElse();
  }
}

abstract class _getProfileImage implements FastlaughEvent {
  const factory _getProfileImage() = _$_getProfileImage;
}

/// @nodoc
mixin _$FastlaughState {
  List<Downloads> get videoProfileImages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastlaughStateCopyWith<FastlaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughStateCopyWith<$Res> {
  factory $FastlaughStateCopyWith(
          FastlaughState value, $Res Function(FastlaughState) then) =
      _$FastlaughStateCopyWithImpl<$Res>;
  $Res call({List<Downloads> videoProfileImages, bool isLoading, bool isError});
}

/// @nodoc
class _$FastlaughStateCopyWithImpl<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  _$FastlaughStateCopyWithImpl(this._value, this._then);

  final FastlaughState _value;
  // ignore: unused_field
  final $Res Function(FastlaughState) _then;

  @override
  $Res call({
    Object? videoProfileImages = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      videoProfileImages: videoProfileImages == freezed
          ? _value.videoProfileImages
          : videoProfileImages // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_FastlaughStateCopyWith<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  factory _$$_FastlaughStateCopyWith(
          _$_FastlaughState value, $Res Function(_$_FastlaughState) then) =
      __$$_FastlaughStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Downloads> videoProfileImages, bool isLoading, bool isError});
}

/// @nodoc
class __$$_FastlaughStateCopyWithImpl<$Res>
    extends _$FastlaughStateCopyWithImpl<$Res>
    implements _$$_FastlaughStateCopyWith<$Res> {
  __$$_FastlaughStateCopyWithImpl(
      _$_FastlaughState _value, $Res Function(_$_FastlaughState) _then)
      : super(_value, (v) => _then(v as _$_FastlaughState));

  @override
  _$_FastlaughState get _value => super._value as _$_FastlaughState;

  @override
  $Res call({
    Object? videoProfileImages = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_FastlaughState(
      videoProfileImages: videoProfileImages == freezed
          ? _value._videoProfileImages
          : videoProfileImages // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FastlaughState
    with DiagnosticableTreeMixin
    implements _FastlaughState {
  _$_FastlaughState(
      {required final List<Downloads> videoProfileImages,
      required this.isLoading,
      required this.isError})
      : _videoProfileImages = videoProfileImages;

  final List<Downloads> _videoProfileImages;
  @override
  List<Downloads> get videoProfileImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoProfileImages);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FastlaughState(videoProfileImages: $videoProfileImages, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FastlaughState'))
      ..add(DiagnosticsProperty('videoProfileImages', videoProfileImages))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FastlaughState &&
            const DeepCollectionEquality()
                .equals(other._videoProfileImages, _videoProfileImages) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoProfileImages),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_FastlaughStateCopyWith<_$_FastlaughState> get copyWith =>
      __$$_FastlaughStateCopyWithImpl<_$_FastlaughState>(this, _$identity);
}

abstract class _FastlaughState implements FastlaughState {
  factory _FastlaughState(
      {required final List<Downloads> videoProfileImages,
      required final bool isLoading,
      required final bool isError}) = _$_FastlaughState;

  @override
  List<Downloads> get videoProfileImages;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_FastlaughStateCopyWith<_$_FastlaughState> get copyWith =>
      throw _privateConstructorUsedError;
}
