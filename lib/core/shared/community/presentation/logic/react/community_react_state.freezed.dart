// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_react_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityReactState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommunityReactState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState()';
  }
}

/// @nodoc
class $CommunityReactStateCopyWith<$Res> {
  $CommunityReactStateCopyWith(
      CommunityReactState _, $Res Function(CommunityReactState) __);
}

/// @nodoc

class _Initial implements CommunityReactState {
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
    return 'CommunityReactState.initial()';
  }
}

/// @nodoc

class _ToggleLikePostLoading implements CommunityReactState {
  const _ToggleLikePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToggleLikePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.toggleLikePostLoading()';
  }
}

/// @nodoc

class _ToggleLikePostSuccess implements CommunityReactState {
  const _ToggleLikePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToggleLikePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.toggleLikePostSuccess()';
  }
}

/// @nodoc

class _ToggleLikePostFailure implements CommunityReactState {
  const _ToggleLikePostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToggleLikePostFailureCopyWith<_ToggleLikePostFailure> get copyWith =>
      __$ToggleLikePostFailureCopyWithImpl<_ToggleLikePostFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleLikePostFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.toggleLikePostFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ToggleLikePostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$ToggleLikePostFailureCopyWith(_ToggleLikePostFailure value,
          $Res Function(_ToggleLikePostFailure) _then) =
      __$ToggleLikePostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$ToggleLikePostFailureCopyWithImpl<$Res>
    implements _$ToggleLikePostFailureCopyWith<$Res> {
  __$ToggleLikePostFailureCopyWithImpl(this._self, this._then);

  final _ToggleLikePostFailure _self;
  final $Res Function(_ToggleLikePostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_ToggleLikePostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetUsersWhoLikedPostLoading implements CommunityReactState {
  const _GetUsersWhoLikedPostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUsersWhoLikedPostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getUsersWhoLikedPostLoading()';
  }
}

/// @nodoc

class _GetUsersWhoLikedPostSuccess implements CommunityReactState {
  const _GetUsersWhoLikedPostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUsersWhoLikedPostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getUsersWhoLikedPostSuccess()';
  }
}

/// @nodoc

class _GetUsersWhoLikedPostFailure implements CommunityReactState {
  const _GetUsersWhoLikedPostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetUsersWhoLikedPostFailureCopyWith<_GetUsersWhoLikedPostFailure>
      get copyWith => __$GetUsersWhoLikedPostFailureCopyWithImpl<
          _GetUsersWhoLikedPostFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUsersWhoLikedPostFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.getUsersWhoLikedPostFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GetUsersWhoLikedPostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$GetUsersWhoLikedPostFailureCopyWith(
          _GetUsersWhoLikedPostFailure value,
          $Res Function(_GetUsersWhoLikedPostFailure) _then) =
      __$GetUsersWhoLikedPostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$GetUsersWhoLikedPostFailureCopyWithImpl<$Res>
    implements _$GetUsersWhoLikedPostFailureCopyWith<$Res> {
  __$GetUsersWhoLikedPostFailureCopyWithImpl(this._self, this._then);

  final _GetUsersWhoLikedPostFailure _self;
  final $Res Function(_GetUsersWhoLikedPostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_GetUsersWhoLikedPostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CountLikePostLoading implements CommunityReactState {
  const _CountLikePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CountLikePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.countLikePostLoading()';
  }
}

/// @nodoc

class _CountLikePostSuccess implements CommunityReactState {
  const _CountLikePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CountLikePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.countLikePostSuccess()';
  }
}

/// @nodoc

class _CountLikePostFailure implements CommunityReactState {
  const _CountLikePostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountLikePostFailureCopyWith<_CountLikePostFailure> get copyWith =>
      __$CountLikePostFailureCopyWithImpl<_CountLikePostFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountLikePostFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.countLikePostFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$CountLikePostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$CountLikePostFailureCopyWith(_CountLikePostFailure value,
          $Res Function(_CountLikePostFailure) _then) =
      __$CountLikePostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$CountLikePostFailureCopyWithImpl<$Res>
    implements _$CountLikePostFailureCopyWith<$Res> {
  __$CountLikePostFailureCopyWithImpl(this._self, this._then);

  final _CountLikePostFailure _self;
  final $Res Function(_CountLikePostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_CountLikePostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CreateCommentLoading implements CommunityReactState {
  const _CreateCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.createCommentLoading()';
  }
}

/// @nodoc

class _CreateCommentSuccess implements CommunityReactState {
  const _CreateCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.createCommentSuccess()';
  }
}

/// @nodoc

class _CreateCommentFailure implements CommunityReactState {
  const _CreateCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCommentFailureCopyWith<_CreateCommentFailure> get copyWith =>
      __$CreateCommentFailureCopyWithImpl<_CreateCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCommentFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.createCommentFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$CreateCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$CreateCommentFailureCopyWith(_CreateCommentFailure value,
          $Res Function(_CreateCommentFailure) _then) =
      __$CreateCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$CreateCommentFailureCopyWithImpl<$Res>
    implements _$CreateCommentFailureCopyWith<$Res> {
  __$CreateCommentFailureCopyWithImpl(this._self, this._then);

  final _CreateCommentFailure _self;
  final $Res Function(_CreateCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_CreateCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UpdateCommentLoading implements CommunityReactState {
  const _UpdateCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.updateCommentLoading()';
  }
}

/// @nodoc

class _UpdateCommentSuccess implements CommunityReactState {
  const _UpdateCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.updateCommentSuccess()';
  }
}

/// @nodoc

class _UpdateCommentFailure implements CommunityReactState {
  const _UpdateCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateCommentFailureCopyWith<_UpdateCommentFailure> get copyWith =>
      __$UpdateCommentFailureCopyWithImpl<_UpdateCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCommentFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.updateCommentFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$UpdateCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$UpdateCommentFailureCopyWith(_UpdateCommentFailure value,
          $Res Function(_UpdateCommentFailure) _then) =
      __$UpdateCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$UpdateCommentFailureCopyWithImpl<$Res>
    implements _$UpdateCommentFailureCopyWith<$Res> {
  __$UpdateCommentFailureCopyWithImpl(this._self, this._then);

  final _UpdateCommentFailure _self;
  final $Res Function(_UpdateCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_UpdateCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _DeleteCommentLoading implements CommunityReactState {
  const _DeleteCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.deleteCommentLoading()';
  }
}

/// @nodoc

class _DeleteCommentSuccess implements CommunityReactState {
  const _DeleteCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.deleteCommentSuccess()';
  }
}

/// @nodoc

class _DeleteCommentFailure implements CommunityReactState {
  const _DeleteCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteCommentFailureCopyWith<_DeleteCommentFailure> get copyWith =>
      __$DeleteCommentFailureCopyWithImpl<_DeleteCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteCommentFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.deleteCommentFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$DeleteCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$DeleteCommentFailureCopyWith(_DeleteCommentFailure value,
          $Res Function(_DeleteCommentFailure) _then) =
      __$DeleteCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$DeleteCommentFailureCopyWithImpl<$Res>
    implements _$DeleteCommentFailureCopyWith<$Res> {
  __$DeleteCommentFailureCopyWithImpl(this._self, this._then);

  final _DeleteCommentFailure _self;
  final $Res Function(_DeleteCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_DeleteCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetAllCommentsLoading implements CommunityReactState {
  const _GetAllCommentsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllCommentsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getAllCommentsLoading()';
  }
}

/// @nodoc

class _GetAllCommentsSuccess implements CommunityReactState {
  const _GetAllCommentsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllCommentsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getAllCommentsSuccess()';
  }
}

/// @nodoc

class _GetAllCommentsFailure implements CommunityReactState {
  const _GetAllCommentsFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetAllCommentsFailureCopyWith<_GetAllCommentsFailure> get copyWith =>
      __$GetAllCommentsFailureCopyWithImpl<_GetAllCommentsFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllCommentsFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.getAllCommentsFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GetAllCommentsFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$GetAllCommentsFailureCopyWith(_GetAllCommentsFailure value,
          $Res Function(_GetAllCommentsFailure) _then) =
      __$GetAllCommentsFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$GetAllCommentsFailureCopyWithImpl<$Res>
    implements _$GetAllCommentsFailureCopyWith<$Res> {
  __$GetAllCommentsFailureCopyWithImpl(this._self, this._then);

  final _GetAllCommentsFailure _self;
  final $Res Function(_GetAllCommentsFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_GetAllCommentsFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetCommentDetailsLoading implements CommunityReactState {
  const _GetCommentDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCommentDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getCommentDetailsLoading()';
  }
}

/// @nodoc

class _GetCommentDetailsSuccess implements CommunityReactState {
  const _GetCommentDetailsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCommentDetailsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getCommentDetailsSuccess()';
  }
}

/// @nodoc

class _GetCommentDetailsFailure implements CommunityReactState {
  const _GetCommentDetailsFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCommentDetailsFailureCopyWith<_GetCommentDetailsFailure> get copyWith =>
      __$GetCommentDetailsFailureCopyWithImpl<_GetCommentDetailsFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCommentDetailsFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CommunityReactState.getCommentDetailsFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GetCommentDetailsFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory _$GetCommentDetailsFailureCopyWith(_GetCommentDetailsFailure value,
          $Res Function(_GetCommentDetailsFailure) _then) =
      __$GetCommentDetailsFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$GetCommentDetailsFailureCopyWithImpl<$Res>
    implements _$GetCommentDetailsFailureCopyWith<$Res> {
  __$GetCommentDetailsFailureCopyWithImpl(this._self, this._then);

  final _GetCommentDetailsFailure _self;
  final $Res Function(_GetCommentDetailsFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_GetCommentDetailsFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
