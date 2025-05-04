// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityPostState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommunityPostState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState()';
  }
}

/// @nodoc
class $CommunityPostStateCopyWith<$Res> {
  $CommunityPostStateCopyWith(
      CommunityPostState _, $Res Function(CommunityPostState) __);
}

/// @nodoc

class _Initial implements CommunityPostState {
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
    return 'CommunityPostState.initial()';
  }
}

/// @nodoc

class CreatePostLoading implements CommunityPostState {
  const CreatePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreatePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.createPostLoading()';
  }
}

/// @nodoc

class CreatePostSuccess implements CommunityPostState {
  const CreatePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreatePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.createPostSuccess()';
  }
}

/// @nodoc

class CreatePostFailure implements CommunityPostState {
  const CreatePostFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePostFailureCopyWith<CreatePostFailure> get copyWith =>
      _$CreatePostFailureCopyWithImpl<CreatePostFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePostFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.createPostFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CreatePostFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $CreatePostFailureCopyWith(
          CreatePostFailure value, $Res Function(CreatePostFailure) _then) =
      _$CreatePostFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CreatePostFailureCopyWithImpl<$Res>
    implements $CreatePostFailureCopyWith<$Res> {
  _$CreatePostFailureCopyWithImpl(this._self, this._then);

  final CreatePostFailure _self;
  final $Res Function(CreatePostFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CreatePostFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetAllPostsLoading implements CommunityPostState {
  const GetAllPostsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllPostsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getAllPostsLoading()';
  }
}

/// @nodoc

class GetAllPostsSuccess implements CommunityPostState {
  const GetAllPostsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllPostsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getAllPostsSuccess()';
  }
}

/// @nodoc

class GetPostsFailure implements CommunityPostState {
  const GetPostsFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsFailureCopyWith<GetPostsFailure> get copyWith =>
      _$GetPostsFailureCopyWithImpl<GetPostsFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.getPostsFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GetPostsFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $GetPostsFailureCopyWith(
          GetPostsFailure value, $Res Function(GetPostsFailure) _then) =
      _$GetPostsFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GetPostsFailureCopyWithImpl<$Res>
    implements $GetPostsFailureCopyWith<$Res> {
  _$GetPostsFailureCopyWithImpl(this._self, this._then);

  final GetPostsFailure _self;
  final $Res Function(GetPostsFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(GetPostsFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetPostDetailsLoading implements CommunityPostState {
  const GetPostDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPostDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getPostDetailsLoading()';
  }
}

/// @nodoc

class GetPostDetailsSuccess implements CommunityPostState {
  const GetPostDetailsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPostDetailsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getPostDetailsSuccess()';
  }
}

/// @nodoc

class GetPostDetailsFailure implements CommunityPostState {
  const GetPostDetailsFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostDetailsFailureCopyWith<GetPostDetailsFailure> get copyWith =>
      _$GetPostDetailsFailureCopyWithImpl<GetPostDetailsFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostDetailsFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.getPostDetailsFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GetPostDetailsFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $GetPostDetailsFailureCopyWith(GetPostDetailsFailure value,
          $Res Function(GetPostDetailsFailure) _then) =
      _$GetPostDetailsFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GetPostDetailsFailureCopyWithImpl<$Res>
    implements $GetPostDetailsFailureCopyWith<$Res> {
  _$GetPostDetailsFailureCopyWithImpl(this._self, this._then);

  final GetPostDetailsFailure _self;
  final $Res Function(GetPostDetailsFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(GetPostDetailsFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdatePostLoading implements CommunityPostState {
  const UpdatePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdatePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.updatePostLoading()';
  }
}

/// @nodoc

class UpdatePostSuccess implements CommunityPostState {
  const UpdatePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdatePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.updatePostSuccess()';
  }
}

/// @nodoc

class UpdatePostFailure implements CommunityPostState {
  const UpdatePostFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePostFailureCopyWith<UpdatePostFailure> get copyWith =>
      _$UpdatePostFailureCopyWithImpl<UpdatePostFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePostFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.updatePostFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UpdatePostFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $UpdatePostFailureCopyWith(
          UpdatePostFailure value, $Res Function(UpdatePostFailure) _then) =
      _$UpdatePostFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UpdatePostFailureCopyWithImpl<$Res>
    implements $UpdatePostFailureCopyWith<$Res> {
  _$UpdatePostFailureCopyWithImpl(this._self, this._then);

  final UpdatePostFailure _self;
  final $Res Function(UpdatePostFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UpdatePostFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeletePostLoading implements CommunityPostState {
  const DeletePostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeletePostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.deletePostLoading()';
  }
}

/// @nodoc

class DeletePostSuccess implements CommunityPostState {
  const DeletePostSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeletePostSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.deletePostSuccess()';
  }
}

/// @nodoc

class DeletePostFailure implements CommunityPostState {
  const DeletePostFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeletePostFailureCopyWith<DeletePostFailure> get copyWith =>
      _$DeletePostFailureCopyWithImpl<DeletePostFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeletePostFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.deletePostFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DeletePostFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $DeletePostFailureCopyWith(
          DeletePostFailure value, $Res Function(DeletePostFailure) _then) =
      _$DeletePostFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeletePostFailureCopyWithImpl<$Res>
    implements $DeletePostFailureCopyWith<$Res> {
  _$DeletePostFailureCopyWithImpl(this._self, this._then);

  final DeletePostFailure _self;
  final $Res Function(DeletePostFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DeletePostFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetPostsFollowingMentorsLoading implements CommunityPostState {
  const GetPostsFollowingMentorsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsFollowingMentorsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getPostsFollowingMentorsLoading()';
  }
}

/// @nodoc

class GetPostsFollowingMentorsSuccess implements CommunityPostState {
  const GetPostsFollowingMentorsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsFollowingMentorsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommunityPostState.getPostsFollowingMentorsSuccess()';
  }
}

/// @nodoc

class GetPostsFollowingMentorsFailure implements CommunityPostState {
  const GetPostsFollowingMentorsFailure(this.message);

  final String message;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsFollowingMentorsFailureCopyWith<GetPostsFollowingMentorsFailure>
      get copyWith => _$GetPostsFollowingMentorsFailureCopyWithImpl<
          GetPostsFollowingMentorsFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsFollowingMentorsFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommunityPostState.getPostsFollowingMentorsFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GetPostsFollowingMentorsFailureCopyWith<$Res>
    implements $CommunityPostStateCopyWith<$Res> {
  factory $GetPostsFollowingMentorsFailureCopyWith(
          GetPostsFollowingMentorsFailure value,
          $Res Function(GetPostsFollowingMentorsFailure) _then) =
      _$GetPostsFollowingMentorsFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GetPostsFollowingMentorsFailureCopyWithImpl<$Res>
    implements $GetPostsFollowingMentorsFailureCopyWith<$Res> {
  _$GetPostsFollowingMentorsFailureCopyWithImpl(this._self, this._then);

  final GetPostsFollowingMentorsFailure _self;
  final $Res Function(GetPostsFollowingMentorsFailure) _then;

  /// Create a copy of CommunityPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(GetPostsFollowingMentorsFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
