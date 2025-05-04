import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_react_state.freezed.dart';

@freezed
class CommunityReactState with _$CommunityReactState {
  const factory CommunityReactState.initial() = _Initial;

  // Toggle Like Post
  const factory CommunityReactState.toggleLikePostLoading() =
      _ToggleLikePostLoading;
  const factory CommunityReactState.toggleLikePostSuccess() =
      _ToggleLikePostSuccess;
  const factory CommunityReactState.toggleLikePostFailure(String error) =
      _ToggleLikePostFailure;

  // Get Users Who Liked Post
  const factory CommunityReactState.getUsersWhoLikedPostLoading() =
      _GetUsersWhoLikedPostLoading;
  const factory CommunityReactState.getUsersWhoLikedPostSuccess() =
      _GetUsersWhoLikedPostSuccess;
  const factory CommunityReactState.getUsersWhoLikedPostFailure(String error) =
      _GetUsersWhoLikedPostFailure;

  // Count Likes Post
  const factory CommunityReactState.countLikePostLoading() =
      _CountLikePostLoading;
  const factory CommunityReactState.countLikePostSuccess() =
      _CountLikePostSuccess;
  const factory CommunityReactState.countLikePostFailure(String error) =
      _CountLikePostFailure;

  // Create Comment
  const factory CommunityReactState.createCommentLoading() =
      _CreateCommentLoading;
  const factory CommunityReactState.createCommentSuccess() =
      _CreateCommentSuccess;
  const factory CommunityReactState.createCommentFailure(String error) =
      _CreateCommentFailure;

  // Update Comment
  const factory CommunityReactState.updateCommentLoading() =
      _UpdateCommentLoading;
  const factory CommunityReactState.updateCommentSuccess() =
      _UpdateCommentSuccess;
  const factory CommunityReactState.updateCommentFailure(String error) =
      _UpdateCommentFailure;

  // Delete Comment
  const factory CommunityReactState.deleteCommentLoading() =
      _DeleteCommentLoading;
  const factory CommunityReactState.deleteCommentSuccess() =
      _DeleteCommentSuccess;
  const factory CommunityReactState.deleteCommentFailure(String error) =
      _DeleteCommentFailure;

  // Get All Comments
  const factory CommunityReactState.getAllCommentsLoading() =
      _GetAllCommentsLoading;
  const factory CommunityReactState.getAllCommentsSuccess() =
      _GetAllCommentsSuccess;
  const factory CommunityReactState.getAllCommentsFailure(String error) =
      _GetAllCommentsFailure;

  // Get Comment Details
  const factory CommunityReactState.getCommentDetailsLoading() =
      _GetCommentDetailsLoading;
  const factory CommunityReactState.getCommentDetailsSuccess() =
      _GetCommentDetailsSuccess;
  const factory CommunityReactState.getCommentDetailsFailure(String error) =
      _GetCommentDetailsFailure;
}
