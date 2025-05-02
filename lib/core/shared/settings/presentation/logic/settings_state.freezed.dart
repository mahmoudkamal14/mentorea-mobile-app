// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState()';
  }
}

/// @nodoc
class $SettingsStateCopyWith<$Res> {
  $SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}

/// @nodoc

class _Initial implements SettingsState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.initial()';
  }
}

/// @nodoc

class ChangePasswordLoading implements SettingsState {
  const ChangePasswordLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.changePasswordLoading()';
  }
}

/// @nodoc

class ChangePasswordSuccess implements SettingsState {
  const ChangePasswordSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.changePasswordSuccess()';
  }
}

/// @nodoc

class ChangePasswordFailure implements SettingsState {
  const ChangePasswordFailure({required this.error});

  final String error;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordFailureCopyWith<ChangePasswordFailure> get copyWith =>
      _$ChangePasswordFailureCopyWithImpl<ChangePasswordFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SettingsState.changePasswordFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordFailureCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $ChangePasswordFailureCopyWith(ChangePasswordFailure value,
          $Res Function(ChangePasswordFailure) _then) =
      _$ChangePasswordFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ChangePasswordFailureCopyWithImpl<$Res>
    implements $ChangePasswordFailureCopyWith<$Res> {
  _$ChangePasswordFailureCopyWithImpl(this._self, this._then);

  final ChangePasswordFailure _self;
  final $Res Function(ChangePasswordFailure) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ChangePasswordFailure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateProfileLoading implements SettingsState {
  const UpdateProfileLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.updateProfileLoading()';
  }
}

/// @nodoc

class UpdateProfileSuccess implements SettingsState {
  const UpdateProfileSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProfileSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.updateProfileSuccess()';
  }
}

/// @nodoc

class UpdateProfileFailure implements SettingsState {
  const UpdateProfileFailure({required this.error});

  final String error;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProfileFailureCopyWith<UpdateProfileFailure> get copyWith =>
      _$UpdateProfileFailureCopyWithImpl<UpdateProfileFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SettingsState.updateProfileFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateProfileFailureCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $UpdateProfileFailureCopyWith(UpdateProfileFailure value,
          $Res Function(UpdateProfileFailure) _then) =
      _$UpdateProfileFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateProfileFailureCopyWithImpl<$Res>
    implements $UpdateProfileFailureCopyWith<$Res> {
  _$UpdateProfileFailureCopyWithImpl(this._self, this._then);

  final UpdateProfileFailure _self;
  final $Res Function(UpdateProfileFailure) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateProfileFailure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LogoutLoading implements SettingsState {
  const LogoutLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.logoutLoading()';
  }
}

/// @nodoc

class LogoutSuccess implements SettingsState {
  const LogoutSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.logoutSuccess()';
  }
}

/// @nodoc

class LogoutFailure implements SettingsState {
  const LogoutFailure({required this.error});

  final String error;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogoutFailureCopyWith<LogoutFailure> get copyWith =>
      _$LogoutFailureCopyWithImpl<LogoutFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SettingsState.logoutFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $LogoutFailureCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $LogoutFailureCopyWith(
          LogoutFailure value, $Res Function(LogoutFailure) _then) =
      _$LogoutFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$LogoutFailureCopyWithImpl<$Res>
    implements $LogoutFailureCopyWith<$Res> {
  _$LogoutFailureCopyWithImpl(this._self, this._then);

  final LogoutFailure _self;
  final $Res Function(LogoutFailure) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(LogoutFailure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ImageSelectedSuccess implements SettingsState {
  const ImageSelectedSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImageSelectedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.imageSelectedSuccess()';
  }
}

/// @nodoc

class ImageSelectedError implements SettingsState {
  const ImageSelectedError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImageSelectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsState.imageSelectedError()';
  }
}

// dart format on
