import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_react_state.freezed.dart';

@freezed
class CommunityReactState with _$CommunityReactState {
  const factory CommunityReactState.initial() = _Initial;

  // Toggle Like Post
  const factory CommunityReactState.toggleLikePostLoading() =
      ToggleLikePostLoading;
  const factory CommunityReactState.toggleLikePostSuccess() =
      ToggleLikePostSuccess;
  const factory CommunityReactState.toggleLikePostFailure(String error) =
      ToggleLikePostFailure;

  // Get Users Who Liked Post
  const factory CommunityReactState.getUsersWhoLikedPostLoading() =
      GetUsersWhoLikedPostLoading;
  const factory CommunityReactState.getUsersWhoLikedPostSuccess() =
      GetUsersWhoLikedPostSuccess;
  const factory CommunityReactState.getUsersWhoLikedPostFailure(String error) =
      GetUsersWhoLikedPostFailure;

  // Count Likes Post
  const factory CommunityReactState.countLikePostLoading() =
      CountLikePostLoading;
  const factory CommunityReactState.countLikePostSuccess() =
      CountLikePostSuccess;
  const factory CommunityReactState.countLikePostFailure(String error) =
      CountLikePostFailure;

  // Create Comment
  const factory CommunityReactState.createCommentLoading() =
      CreateCommentLoading;
  const factory CommunityReactState.createCommentSuccess() =
      CreateCommentSuccess;
  const factory CommunityReactState.createCommentFailure(String error) =
      CreateCommentFailure;

  // Update Comment
  const factory CommunityReactState.updateCommentLoading() =
      UpdateCommentLoading;
  const factory CommunityReactState.updateCommentSuccess() =
      UpdateCommentSuccess;
  const factory CommunityReactState.updateCommentFailure(String error) =
      UpdateCommentFailure;

  // Delete Comment
  const factory CommunityReactState.deleteCommentLoading() =
      DeleteCommentLoading;
  const factory CommunityReactState.deleteCommentSuccess() =
      DeleteCommentSuccess;
  const factory CommunityReactState.deleteCommentFailure(String error) =
      DeleteCommentFailure;

  // Get All Comments
  const factory CommunityReactState.getAllCommentsLoading() =
      GetAllCommentsLoading;
  const factory CommunityReactState.getAllCommentsSuccess() =
      GetAllCommentsSuccess;
  const factory CommunityReactState.getAllCommentsFailure(String error) =
      GetAllCommentsFailure;

  // Get Comment Details
  const factory CommunityReactState.getCommentDetailsLoading() =
      GetCommentDetailsLoading;
  const factory CommunityReactState.getCommentDetailsSuccess() =
      GetCommentDetailsSuccess;
  const factory CommunityReactState.getCommentDetailsFailure(String error) =
      GetCommentDetailsFailure;
}
