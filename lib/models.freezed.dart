// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatusStatusTearOff {
  const _$StatusStatusTearOff();

  _StatusStatusInitial initial() {
    return const _StatusStatusInitial();
  }

  _StatusStatusLoading loading() {
    return const _StatusStatusLoading();
  }

  _StatusStatusLoaded loaded(List<Status> stati) {
    return _StatusStatusLoaded(
      stati,
    );
  }
}

/// @nodoc
const $StatusStatus = _$StatusStatusTearOff();

/// @nodoc
mixin _$StatusStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Status> stati) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Status> stati)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusStatusInitial value) initial,
    required TResult Function(_StatusStatusLoading value) loading,
    required TResult Function(_StatusStatusLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusStatusInitial value)? initial,
    TResult Function(_StatusStatusLoading value)? loading,
    TResult Function(_StatusStatusLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusStatusCopyWith<$Res> {
  factory $StatusStatusCopyWith(
          StatusStatus value, $Res Function(StatusStatus) then) =
      _$StatusStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatusStatusCopyWithImpl<$Res> implements $StatusStatusCopyWith<$Res> {
  _$StatusStatusCopyWithImpl(this._value, this._then);

  final StatusStatus _value;
  // ignore: unused_field
  final $Res Function(StatusStatus) _then;
}

/// @nodoc
abstract class _$StatusStatusInitialCopyWith<$Res> {
  factory _$StatusStatusInitialCopyWith(_StatusStatusInitial value,
          $Res Function(_StatusStatusInitial) then) =
      __$StatusStatusInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$StatusStatusInitialCopyWithImpl<$Res>
    extends _$StatusStatusCopyWithImpl<$Res>
    implements _$StatusStatusInitialCopyWith<$Res> {
  __$StatusStatusInitialCopyWithImpl(
      _StatusStatusInitial _value, $Res Function(_StatusStatusInitial) _then)
      : super(_value, (v) => _then(v as _StatusStatusInitial));

  @override
  _StatusStatusInitial get _value => super._value as _StatusStatusInitial;
}

/// @nodoc

class _$_StatusStatusInitial
    with DiagnosticableTreeMixin
    implements _StatusStatusInitial {
  const _$_StatusStatusInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StatusStatus.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusStatusInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Status> stati) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Status> stati)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusStatusInitial value) initial,
    required TResult Function(_StatusStatusLoading value) loading,
    required TResult Function(_StatusStatusLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusStatusInitial value)? initial,
    TResult Function(_StatusStatusLoading value)? loading,
    TResult Function(_StatusStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StatusStatusInitial implements StatusStatus {
  const factory _StatusStatusInitial() = _$_StatusStatusInitial;
}

/// @nodoc
abstract class _$StatusStatusLoadingCopyWith<$Res> {
  factory _$StatusStatusLoadingCopyWith(_StatusStatusLoading value,
          $Res Function(_StatusStatusLoading) then) =
      __$StatusStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StatusStatusLoadingCopyWithImpl<$Res>
    extends _$StatusStatusCopyWithImpl<$Res>
    implements _$StatusStatusLoadingCopyWith<$Res> {
  __$StatusStatusLoadingCopyWithImpl(
      _StatusStatusLoading _value, $Res Function(_StatusStatusLoading) _then)
      : super(_value, (v) => _then(v as _StatusStatusLoading));

  @override
  _StatusStatusLoading get _value => super._value as _StatusStatusLoading;
}

/// @nodoc

class _$_StatusStatusLoading
    with DiagnosticableTreeMixin
    implements _StatusStatusLoading {
  const _$_StatusStatusLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusStatus.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StatusStatus.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Status> stati) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Status> stati)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusStatusInitial value) initial,
    required TResult Function(_StatusStatusLoading value) loading,
    required TResult Function(_StatusStatusLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusStatusInitial value)? initial,
    TResult Function(_StatusStatusLoading value)? loading,
    TResult Function(_StatusStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StatusStatusLoading implements StatusStatus {
  const factory _StatusStatusLoading() = _$_StatusStatusLoading;
}

/// @nodoc
abstract class _$StatusStatusLoadedCopyWith<$Res> {
  factory _$StatusStatusLoadedCopyWith(
          _StatusStatusLoaded value, $Res Function(_StatusStatusLoaded) then) =
      __$StatusStatusLoadedCopyWithImpl<$Res>;
  $Res call({List<Status> stati});
}

/// @nodoc
class __$StatusStatusLoadedCopyWithImpl<$Res>
    extends _$StatusStatusCopyWithImpl<$Res>
    implements _$StatusStatusLoadedCopyWith<$Res> {
  __$StatusStatusLoadedCopyWithImpl(
      _StatusStatusLoaded _value, $Res Function(_StatusStatusLoaded) _then)
      : super(_value, (v) => _then(v as _StatusStatusLoaded));

  @override
  _StatusStatusLoaded get _value => super._value as _StatusStatusLoaded;

  @override
  $Res call({
    Object? stati = freezed,
  }) {
    return _then(_StatusStatusLoaded(
      stati == freezed
          ? _value.stati
          : stati // ignore: cast_nullable_to_non_nullable
              as List<Status>,
    ));
  }
}

/// @nodoc

class _$_StatusStatusLoaded
    with DiagnosticableTreeMixin
    implements _StatusStatusLoaded {
  const _$_StatusStatusLoaded(this.stati);

  @override
  final List<Status> stati;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusStatus.loaded(stati: $stati)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatusStatus.loaded'))
      ..add(DiagnosticsProperty('stati', stati));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusStatusLoaded &&
            (identical(other.stati, stati) ||
                const DeepCollectionEquality().equals(other.stati, stati)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stati);

  @JsonKey(ignore: true)
  @override
  _$StatusStatusLoadedCopyWith<_StatusStatusLoaded> get copyWith =>
      __$StatusStatusLoadedCopyWithImpl<_StatusStatusLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Status> stati) loaded,
  }) {
    return loaded(stati);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Status> stati)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stati);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusStatusInitial value) initial,
    required TResult Function(_StatusStatusLoading value) loading,
    required TResult Function(_StatusStatusLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusStatusInitial value)? initial,
    TResult Function(_StatusStatusLoading value)? loading,
    TResult Function(_StatusStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StatusStatusLoaded implements StatusStatus {
  const factory _StatusStatusLoaded(List<Status> stati) = _$_StatusStatusLoaded;

  List<Status> get stati => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StatusStatusLoadedCopyWith<_StatusStatusLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PermissionStateTearOff {
  const _$PermissionStateTearOff();

  _PermissionInitial initial() {
    return const _PermissionInitial();
  }

  _PermissionLoading loading() {
    return const _PermissionLoading();
  }

  _PermissionDenied denied() {
    return const _PermissionDenied();
  }

  _PermissionPermanentlyDenied permanentlyDenied() {
    return const _PermissionPermanentlyDenied();
  }

  _PermissionGranted granted() {
    return const _PermissionGranted();
  }

  _PermissionLimited limited() {
    return const _PermissionLimited();
  }

  _PermissionRestricted restricted() {
    return const _PermissionRestricted();
  }
}

/// @nodoc
const $PermissionState = _$PermissionStateTearOff();

/// @nodoc
mixin _$PermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateCopyWith<$Res> {
  factory $PermissionStateCopyWith(
          PermissionState value, $Res Function(PermissionState) then) =
      _$PermissionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  final PermissionState _value;
  // ignore: unused_field
  final $Res Function(PermissionState) _then;
}

/// @nodoc
abstract class _$PermissionInitialCopyWith<$Res> {
  factory _$PermissionInitialCopyWith(
          _PermissionInitial value, $Res Function(_PermissionInitial) then) =
      __$PermissionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionInitialCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionInitialCopyWith<$Res> {
  __$PermissionInitialCopyWithImpl(
      _PermissionInitial _value, $Res Function(_PermissionInitial) _then)
      : super(_value, (v) => _then(v as _PermissionInitial));

  @override
  _PermissionInitial get _value => super._value as _PermissionInitial;
}

/// @nodoc

class _$_PermissionInitial
    with DiagnosticableTreeMixin
    implements _PermissionInitial {
  const _$_PermissionInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PermissionInitial implements PermissionState {
  const factory _PermissionInitial() = _$_PermissionInitial;
}

/// @nodoc
abstract class _$PermissionLoadingCopyWith<$Res> {
  factory _$PermissionLoadingCopyWith(
          _PermissionLoading value, $Res Function(_PermissionLoading) then) =
      __$PermissionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionLoadingCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionLoadingCopyWith<$Res> {
  __$PermissionLoadingCopyWithImpl(
      _PermissionLoading _value, $Res Function(_PermissionLoading) _then)
      : super(_value, (v) => _then(v as _PermissionLoading));

  @override
  _PermissionLoading get _value => super._value as _PermissionLoading;
}

/// @nodoc

class _$_PermissionLoading
    with DiagnosticableTreeMixin
    implements _PermissionLoading {
  const _$_PermissionLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PermissionLoading implements PermissionState {
  const factory _PermissionLoading() = _$_PermissionLoading;
}

/// @nodoc
abstract class _$PermissionDeniedCopyWith<$Res> {
  factory _$PermissionDeniedCopyWith(
          _PermissionDenied value, $Res Function(_PermissionDenied) then) =
      __$PermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionDeniedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionDeniedCopyWith<$Res> {
  __$PermissionDeniedCopyWithImpl(
      _PermissionDenied _value, $Res Function(_PermissionDenied) _then)
      : super(_value, (v) => _then(v as _PermissionDenied));

  @override
  _PermissionDenied get _value => super._value as _PermissionDenied;
}

/// @nodoc

class _$_PermissionDenied
    with DiagnosticableTreeMixin
    implements _PermissionDenied {
  const _$_PermissionDenied();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.denied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.denied'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements PermissionState {
  const factory _PermissionDenied() = _$_PermissionDenied;
}

/// @nodoc
abstract class _$PermissionPermanentlyDeniedCopyWith<$Res> {
  factory _$PermissionPermanentlyDeniedCopyWith(
          _PermissionPermanentlyDenied value,
          $Res Function(_PermissionPermanentlyDenied) then) =
      __$PermissionPermanentlyDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionPermanentlyDeniedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionPermanentlyDeniedCopyWith<$Res> {
  __$PermissionPermanentlyDeniedCopyWithImpl(
      _PermissionPermanentlyDenied _value,
      $Res Function(_PermissionPermanentlyDenied) _then)
      : super(_value, (v) => _then(v as _PermissionPermanentlyDenied));

  @override
  _PermissionPermanentlyDenied get _value =>
      super._value as _PermissionPermanentlyDenied;
}

/// @nodoc

class _$_PermissionPermanentlyDenied
    with DiagnosticableTreeMixin
    implements _PermissionPermanentlyDenied {
  const _$_PermissionPermanentlyDenied();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.permanentlyDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PermissionState.permanentlyDenied'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionPermanentlyDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionPermanentlyDenied implements PermissionState {
  const factory _PermissionPermanentlyDenied() = _$_PermissionPermanentlyDenied;
}

/// @nodoc
abstract class _$PermissionGrantedCopyWith<$Res> {
  factory _$PermissionGrantedCopyWith(
          _PermissionGranted value, $Res Function(_PermissionGranted) then) =
      __$PermissionGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionGrantedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionGrantedCopyWith<$Res> {
  __$PermissionGrantedCopyWithImpl(
      _PermissionGranted _value, $Res Function(_PermissionGranted) _then)
      : super(_value, (v) => _then(v as _PermissionGranted));

  @override
  _PermissionGranted get _value => super._value as _PermissionGranted;
}

/// @nodoc

class _$_PermissionGranted
    with DiagnosticableTreeMixin
    implements _PermissionGranted {
  const _$_PermissionGranted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.granted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.granted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class _PermissionGranted implements PermissionState {
  const factory _PermissionGranted() = _$_PermissionGranted;
}

/// @nodoc
abstract class _$PermissionLimitedCopyWith<$Res> {
  factory _$PermissionLimitedCopyWith(
          _PermissionLimited value, $Res Function(_PermissionLimited) then) =
      __$PermissionLimitedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionLimitedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionLimitedCopyWith<$Res> {
  __$PermissionLimitedCopyWithImpl(
      _PermissionLimited _value, $Res Function(_PermissionLimited) _then)
      : super(_value, (v) => _then(v as _PermissionLimited));

  @override
  _PermissionLimited get _value => super._value as _PermissionLimited;
}

/// @nodoc

class _$_PermissionLimited
    with DiagnosticableTreeMixin
    implements _PermissionLimited {
  const _$_PermissionLimited();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.limited()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.limited'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionLimited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return limited();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return limited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited(this);
    }
    return orElse();
  }
}

abstract class _PermissionLimited implements PermissionState {
  const factory _PermissionLimited() = _$_PermissionLimited;
}

/// @nodoc
abstract class _$PermissionRestrictedCopyWith<$Res> {
  factory _$PermissionRestrictedCopyWith(_PermissionRestricted value,
          $Res Function(_PermissionRestricted) then) =
      __$PermissionRestrictedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PermissionRestrictedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements _$PermissionRestrictedCopyWith<$Res> {
  __$PermissionRestrictedCopyWithImpl(
      _PermissionRestricted _value, $Res Function(_PermissionRestricted) _then)
      : super(_value, (v) => _then(v as _PermissionRestricted));

  @override
  _PermissionRestricted get _value => super._value as _PermissionRestricted;
}

/// @nodoc

class _$_PermissionRestricted
    with DiagnosticableTreeMixin
    implements _PermissionRestricted {
  const _$_PermissionRestricted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionState.restricted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PermissionState.restricted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PermissionRestricted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
    required TResult Function() granted,
    required TResult Function() limited,
    required TResult Function() restricted,
  }) {
    return restricted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    TResult Function()? granted,
    TResult Function()? limited,
    TResult Function()? restricted,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionLoading value) loading,
    required TResult Function(_PermissionDenied value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
    required TResult Function(_PermissionGranted value) granted,
    required TResult Function(_PermissionLimited value) limited,
    required TResult Function(_PermissionRestricted value) restricted,
  }) {
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionLoading value)? loading,
    TResult Function(_PermissionDenied value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    TResult Function(_PermissionGranted value)? granted,
    TResult Function(_PermissionLimited value)? limited,
    TResult Function(_PermissionRestricted value)? restricted,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted(this);
    }
    return orElse();
  }
}

abstract class _PermissionRestricted implements PermissionState {
  const factory _PermissionRestricted() = _$_PermissionRestricted;
}

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  _Image img(FileStat fileStat, String name) {
    return _Image(
      fileStat,
      name,
    );
  }

  _Video video(FileStat fileStat, String name) {
    return _Video(
      fileStat,
      name,
    );
  }
}

/// @nodoc
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  FileStat get fileStat => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileStat fileStat, String name) img,
    required TResult Function(FileStat fileStat, String name) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileStat fileStat, String name)? img,
    TResult Function(FileStat fileStat, String name)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) img,
    required TResult Function(_Video value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? img,
    TResult Function(_Video value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({FileStat fileStat, String name});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? fileStat = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      fileStat: fileStat == freezed
          ? _value.fileStat
          : fileStat // ignore: cast_nullable_to_non_nullable
              as FileStat,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) then) =
      __$ImageCopyWithImpl<$Res>;
  @override
  $Res call({FileStat fileStat, String name});
}

/// @nodoc
class __$ImageCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(_Image _value, $Res Function(_Image) _then)
      : super(_value, (v) => _then(v as _Image));

  @override
  _Image get _value => super._value as _Image;

  @override
  $Res call({
    Object? fileStat = freezed,
    Object? name = freezed,
  }) {
    return _then(_Image(
      fileStat == freezed
          ? _value.fileStat
          : fileStat // ignore: cast_nullable_to_non_nullable
              as FileStat,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Image with DiagnosticableTreeMixin implements _Image {
  const _$_Image(this.fileStat, this.name);

  @override
  final FileStat fileStat;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status.img(fileStat: $fileStat, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status.img'))
      ..add(DiagnosticsProperty('fileStat', fileStat))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image &&
            (identical(other.fileStat, fileStat) ||
                const DeepCollectionEquality()
                    .equals(other.fileStat, fileStat)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileStat) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ImageCopyWith<_Image> get copyWith =>
      __$ImageCopyWithImpl<_Image>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileStat fileStat, String name) img,
    required TResult Function(FileStat fileStat, String name) video,
  }) {
    return img(fileStat, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileStat fileStat, String name)? img,
    TResult Function(FileStat fileStat, String name)? video,
    required TResult orElse(),
  }) {
    if (img != null) {
      return img(fileStat, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) img,
    required TResult Function(_Video value) video,
  }) {
    return img(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? img,
    TResult Function(_Video value)? video,
    required TResult orElse(),
  }) {
    if (img != null) {
      return img(this);
    }
    return orElse();
  }
}

abstract class _Image implements Status {
  const factory _Image(FileStat fileStat, String name) = _$_Image;

  @override
  FileStat get fileStat => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageCopyWith<_Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call({FileStat fileStat, String name});
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? fileStat = freezed,
    Object? name = freezed,
  }) {
    return _then(_Video(
      fileStat == freezed
          ? _value.fileStat
          : fileStat // ignore: cast_nullable_to_non_nullable
              as FileStat,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Video with DiagnosticableTreeMixin implements _Video {
  const _$_Video(this.fileStat, this.name);

  @override
  final FileStat fileStat;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status.video(fileStat: $fileStat, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status.video'))
      ..add(DiagnosticsProperty('fileStat', fileStat))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
            (identical(other.fileStat, fileStat) ||
                const DeepCollectionEquality()
                    .equals(other.fileStat, fileStat)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileStat) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileStat fileStat, String name) img,
    required TResult Function(FileStat fileStat, String name) video,
  }) {
    return video(fileStat, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileStat fileStat, String name)? img,
    TResult Function(FileStat fileStat, String name)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(fileStat, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) img,
    required TResult Function(_Video value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? img,
    TResult Function(_Video value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }
}

abstract class _Video implements Status {
  const factory _Video(FileStat fileStat, String name) = _$_Video;

  @override
  FileStat get fileStat => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
