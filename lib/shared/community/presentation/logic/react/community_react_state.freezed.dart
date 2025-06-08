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

class ToggleLikePostLoading implements CommunityReactState {
  const ToggleLikePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ToggleLikePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.toggleLikePostLoading()';
  }
}

/// @nodoc

class ToggleLikePostSuccess implements CommunityReactState {
  const ToggleLikePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ToggleLikePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.toggleLikePostSuccess()';
  }
}

/// @nodoc

class ToggleLikePostFailure implements CommunityReactState {
  const ToggleLikePostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToggleLikePostFailureCopyWith<ToggleLikePostFailure> get copyWith =>
      _$ToggleLikePostFailureCopyWithImpl<ToggleLikePostFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleLikePostFailure &&
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
abstract mixin class $ToggleLikePostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $ToggleLikePostFailureCopyWith(ToggleLikePostFailure value,
          $Res Function(ToggleLikePostFailure) _then) =
      _$ToggleLikePostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ToggleLikePostFailureCopyWithImpl<$Res>
    implements $ToggleLikePostFailureCopyWith<$Res> {
  _$ToggleLikePostFailureCopyWithImpl(this._self, this._then);

  final ToggleLikePostFailure _self;
  final $Res Function(ToggleLikePostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ToggleLikePostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetUsersWhoLikedPostLoading implements CommunityReactState {
  const GetUsersWhoLikedPostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUsersWhoLikedPostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getUsersWhoLikedPostLoading()';
  }
}

/// @nodoc

class GetUsersWhoLikedPostSuccess implements CommunityReactState {
  const GetUsersWhoLikedPostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUsersWhoLikedPostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getUsersWhoLikedPostSuccess()';
  }
}

/// @nodoc

class GetUsersWhoLikedPostFailure implements CommunityReactState {
  const GetUsersWhoLikedPostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUsersWhoLikedPostFailureCopyWith<GetUsersWhoLikedPostFailure>
      get copyWith => _$GetUsersWhoLikedPostFailureCopyWithImpl<
          GetUsersWhoLikedPostFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUsersWhoLikedPostFailure &&
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
abstract mixin class $GetUsersWhoLikedPostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $GetUsersWhoLikedPostFailureCopyWith(
          GetUsersWhoLikedPostFailure value,
          $Res Function(GetUsersWhoLikedPostFailure) _then) =
      _$GetUsersWhoLikedPostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetUsersWhoLikedPostFailureCopyWithImpl<$Res>
    implements $GetUsersWhoLikedPostFailureCopyWith<$Res> {
  _$GetUsersWhoLikedPostFailureCopyWithImpl(this._self, this._then);

  final GetUsersWhoLikedPostFailure _self;
  final $Res Function(GetUsersWhoLikedPostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetUsersWhoLikedPostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CountLikePostLoading implements CommunityReactState {
  const CountLikePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountLikePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.countLikePostLoading()';
  }
}

/// @nodoc

class CountLikePostSuccess implements CommunityReactState {
  const CountLikePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountLikePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.countLikePostSuccess()';
  }
}

/// @nodoc

class CountLikePostFailure implements CommunityReactState {
  const CountLikePostFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountLikePostFailureCopyWith<CountLikePostFailure> get copyWith =>
      _$CountLikePostFailureCopyWithImpl<CountLikePostFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CountLikePostFailure &&
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
abstract mixin class $CountLikePostFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $CountLikePostFailureCopyWith(CountLikePostFailure value,
          $Res Function(CountLikePostFailure) _then) =
      _$CountLikePostFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CountLikePostFailureCopyWithImpl<$Res>
    implements $CountLikePostFailureCopyWith<$Res> {
  _$CountLikePostFailureCopyWithImpl(this._self, this._then);

  final CountLikePostFailure _self;
  final $Res Function(CountLikePostFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CountLikePostFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CreateCommentLoading implements CommunityReactState {
  const CreateCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.createCommentLoading()';
  }
}

/// @nodoc

class CreateCommentSuccess implements CommunityReactState {
  const CreateCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.createCommentSuccess()';
  }
}

/// @nodoc

class CreateCommentFailure implements CommunityReactState {
  const CreateCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCommentFailureCopyWith<CreateCommentFailure> get copyWith =>
      _$CreateCommentFailureCopyWithImpl<CreateCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCommentFailure &&
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
abstract mixin class $CreateCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $CreateCommentFailureCopyWith(CreateCommentFailure value,
          $Res Function(CreateCommentFailure) _then) =
      _$CreateCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CreateCommentFailureCopyWithImpl<$Res>
    implements $CreateCommentFailureCopyWith<$Res> {
  _$CreateCommentFailureCopyWithImpl(this._self, this._then);

  final CreateCommentFailure _self;
  final $Res Function(CreateCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CreateCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateCommentLoading implements CommunityReactState {
  const UpdateCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.updateCommentLoading()';
  }
}

/// @nodoc

class UpdateCommentSuccess implements CommunityReactState {
  const UpdateCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.updateCommentSuccess()';
  }
}

/// @nodoc

class UpdateCommentFailure implements CommunityReactState {
  const UpdateCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCommentFailureCopyWith<UpdateCommentFailure> get copyWith =>
      _$UpdateCommentFailureCopyWithImpl<UpdateCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCommentFailure &&
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
abstract mixin class $UpdateCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $UpdateCommentFailureCopyWith(UpdateCommentFailure value,
          $Res Function(UpdateCommentFailure) _then) =
      _$UpdateCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateCommentFailureCopyWithImpl<$Res>
    implements $UpdateCommentFailureCopyWith<$Res> {
  _$UpdateCommentFailureCopyWithImpl(this._self, this._then);

  final UpdateCommentFailure _self;
  final $Res Function(UpdateCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeleteCommentLoading implements CommunityReactState {
  const DeleteCommentLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteCommentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.deleteCommentLoading()';
  }
}

/// @nodoc

class DeleteCommentSuccess implements CommunityReactState {
  const DeleteCommentSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteCommentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.deleteCommentSuccess()';
  }
}

/// @nodoc

class DeleteCommentFailure implements CommunityReactState {
  const DeleteCommentFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteCommentFailureCopyWith<DeleteCommentFailure> get copyWith =>
      _$DeleteCommentFailureCopyWithImpl<DeleteCommentFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteCommentFailure &&
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
abstract mixin class $DeleteCommentFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $DeleteCommentFailureCopyWith(DeleteCommentFailure value,
          $Res Function(DeleteCommentFailure) _then) =
      _$DeleteCommentFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DeleteCommentFailureCopyWithImpl<$Res>
    implements $DeleteCommentFailureCopyWith<$Res> {
  _$DeleteCommentFailureCopyWithImpl(this._self, this._then);

  final DeleteCommentFailure _self;
  final $Res Function(DeleteCommentFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DeleteCommentFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetAllCommentsLoading implements CommunityReactState {
  const GetAllCommentsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllCommentsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getAllCommentsLoading()';
  }
}

/// @nodoc

class GetAllCommentsSuccess implements CommunityReactState {
  const GetAllCommentsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllCommentsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getAllCommentsSuccess()';
  }
}

/// @nodoc

class GetAllCommentsFailure implements CommunityReactState {
  const GetAllCommentsFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllCommentsFailureCopyWith<GetAllCommentsFailure> get copyWith =>
      _$GetAllCommentsFailureCopyWithImpl<GetAllCommentsFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllCommentsFailure &&
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
abstract mixin class $GetAllCommentsFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $GetAllCommentsFailureCopyWith(GetAllCommentsFailure value,
          $Res Function(GetAllCommentsFailure) _then) =
      _$GetAllCommentsFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetAllCommentsFailureCopyWithImpl<$Res>
    implements $GetAllCommentsFailureCopyWith<$Res> {
  _$GetAllCommentsFailureCopyWithImpl(this._self, this._then);

  final GetAllCommentsFailure _self;
  final $Res Function(GetAllCommentsFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetAllCommentsFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetCommentDetailsLoading implements CommunityReactState {
  const GetCommentDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCommentDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getCommentDetailsLoading()';
  }
}

/// @nodoc

class GetCommentDetailsSuccess implements CommunityReactState {
  const GetCommentDetailsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCommentDetailsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityReactState.getCommentDetailsSuccess()';
  }
}

/// @nodoc

class GetCommentDetailsFailure implements CommunityReactState {
  const GetCommentDetailsFailure(this.error);

  final String error;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCommentDetailsFailureCopyWith<GetCommentDetailsFailure> get copyWith =>
      _$GetCommentDetailsFailureCopyWithImpl<GetCommentDetailsFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCommentDetailsFailure &&
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
abstract mixin class $GetCommentDetailsFailureCopyWith<$Res>
    implements $CommunityReactStateCopyWith<$Res> {
  factory $GetCommentDetailsFailureCopyWith(GetCommentDetailsFailure value,
          $Res Function(GetCommentDetailsFailure) _then) =
      _$GetCommentDetailsFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetCommentDetailsFailureCopyWithImpl<$Res>
    implements $GetCommentDetailsFailureCopyWith<$Res> {
  _$GetCommentDetailsFailureCopyWithImpl(this._self, this._then);

  final GetCommentDetailsFailure _self;
  final $Res Function(GetCommentDetailsFailure) _then;

  /// Create a copy of CommunityReactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetCommentDetailsFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
