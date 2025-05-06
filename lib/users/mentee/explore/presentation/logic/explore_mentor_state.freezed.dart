// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_mentor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExploreMentorState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExploreMentorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState()';
  }
}

/// @nodoc
class $ExploreMentorStateCopyWith<$Res> {
  $ExploreMentorStateCopyWith(
      ExploreMentorState _, $Res Function(ExploreMentorState) __);
}

/// @nodoc

class _Initial implements ExploreMentorState {
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
    return 'ExploreMentorState.initial()';
  }
}

/// @nodoc

class GetAllSpecializationsLoading implements ExploreMentorState {
  const GetAllSpecializationsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllSpecializationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.getAllSpecializationsLoading()';
  }
}

/// @nodoc

class GetAllSpecializationsSuccess implements ExploreMentorState {
  const GetAllSpecializationsSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllSpecializationsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.getAllSpecializationsSuccess()';
  }
}

/// @nodoc

class GetAllSpecializationsFailure implements ExploreMentorState {
  const GetAllSpecializationsFailure(this.error);

  final String error;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllSpecializationsFailureCopyWith<GetAllSpecializationsFailure>
      get copyWith => _$GetAllSpecializationsFailureCopyWithImpl<
          GetAllSpecializationsFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllSpecializationsFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ExploreMentorState.getAllSpecializationsFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetAllSpecializationsFailureCopyWith<$Res>
    implements $ExploreMentorStateCopyWith<$Res> {
  factory $GetAllSpecializationsFailureCopyWith(
          GetAllSpecializationsFailure value,
          $Res Function(GetAllSpecializationsFailure) _then) =
      _$GetAllSpecializationsFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetAllSpecializationsFailureCopyWithImpl<$Res>
    implements $GetAllSpecializationsFailureCopyWith<$Res> {
  _$GetAllSpecializationsFailureCopyWithImpl(this._self, this._then);

  final GetAllSpecializationsFailure _self;
  final $Res Function(GetAllSpecializationsFailure) _then;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetAllSpecializationsFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SearchingForMentorLoading implements ExploreMentorState {
  const SearchingForMentorLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchingForMentorLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.searchingForMentorLoading()';
  }
}

/// @nodoc

class SearchingForMentorSuccess implements ExploreMentorState {
  const SearchingForMentorSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchingForMentorSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.searchingForMentorSuccess()';
  }
}

/// @nodoc

class SearchingForMentorFailure implements ExploreMentorState {
  const SearchingForMentorFailure(this.error);

  final String error;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchingForMentorFailureCopyWith<SearchingForMentorFailure> get copyWith =>
      _$SearchingForMentorFailureCopyWithImpl<SearchingForMentorFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchingForMentorFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ExploreMentorState.searchingForMentorFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SearchingForMentorFailureCopyWith<$Res>
    implements $ExploreMentorStateCopyWith<$Res> {
  factory $SearchingForMentorFailureCopyWith(SearchingForMentorFailure value,
          $Res Function(SearchingForMentorFailure) _then) =
      _$SearchingForMentorFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SearchingForMentorFailureCopyWithImpl<$Res>
    implements $SearchingForMentorFailureCopyWith<$Res> {
  _$SearchingForMentorFailureCopyWithImpl(this._self, this._then);

  final SearchingForMentorFailure _self;
  final $Res Function(SearchingForMentorFailure) _then;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SearchingForMentorFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetMentorsBySpecializationLoading implements ExploreMentorState {
  const GetMentorsBySpecializationLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMentorsBySpecializationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.getMentorsBySpecializationLoading()';
  }
}

/// @nodoc

class GetMentorsBySpecializationSuccess implements ExploreMentorState {
  const GetMentorsBySpecializationSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMentorsBySpecializationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExploreMentorState.getMentorsBySpecializationSuccess()';
  }
}

/// @nodoc

class GetMentorsBySpecializationFailure implements ExploreMentorState {
  const GetMentorsBySpecializationFailure(this.error);

  final String error;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMentorsBySpecializationFailureCopyWith<GetMentorsBySpecializationFailure>
      get copyWith => _$GetMentorsBySpecializationFailureCopyWithImpl<
          GetMentorsBySpecializationFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMentorsBySpecializationFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ExploreMentorState.getMentorsBySpecializationFailure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetMentorsBySpecializationFailureCopyWith<$Res>
    implements $ExploreMentorStateCopyWith<$Res> {
  factory $GetMentorsBySpecializationFailureCopyWith(
          GetMentorsBySpecializationFailure value,
          $Res Function(GetMentorsBySpecializationFailure) _then) =
      _$GetMentorsBySpecializationFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetMentorsBySpecializationFailureCopyWithImpl<$Res>
    implements $GetMentorsBySpecializationFailureCopyWith<$Res> {
  _$GetMentorsBySpecializationFailureCopyWithImpl(this._self, this._then);

  final GetMentorsBySpecializationFailure _self;
  final $Res Function(GetMentorsBySpecializationFailure) _then;

  /// Create a copy of ExploreMentorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetMentorsBySpecializationFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
