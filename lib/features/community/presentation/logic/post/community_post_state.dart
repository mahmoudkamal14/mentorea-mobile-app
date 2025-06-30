import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_post_state.freezed.dart';

@freezed
class CommunityPostState with _$CommunityPostState {
  const factory CommunityPostState.initial() = _Initial;

  // Create Post
  const factory CommunityPostState.createPostLoading() = CreatePostLoading;
  const factory CommunityPostState.createPostSuccess() = CreatePostSuccess;
  const factory CommunityPostState.createPostFailure(String message) =
      CreatePostFailure;

  // Get All Posts
  const factory CommunityPostState.getAllPostsLoading() = GetAllPostsLoading;
  const factory CommunityPostState.getAllPostsSuccess() = GetAllPostsSuccess;
  const factory CommunityPostState.getPostsFailure(String message) =
      GetPostsFailure;

  // Get Post
  const factory CommunityPostState.getPostDetailsLoading() =
      GetPostDetailsLoading;
  const factory CommunityPostState.getPostDetailsSuccess() =
      GetPostDetailsSuccess;
  const factory CommunityPostState.getPostDetailsFailure(String message) =
      GetPostDetailsFailure;

  // Update Post
  const factory CommunityPostState.updatePostLoading() = UpdatePostLoading;
  const factory CommunityPostState.updatePostSuccess() = UpdatePostSuccess;
  const factory CommunityPostState.updatePostFailure(String message) =
      UpdatePostFailure;

  // Delete Post
  const factory CommunityPostState.deletePostLoading() = DeletePostLoading;
  const factory CommunityPostState.deletePostSuccess() = DeletePostSuccess;
  const factory CommunityPostState.deletePostFailure(String message) =
      DeletePostFailure;

  // Get posts by followed mentors
  const factory CommunityPostState.getPostsFollowingMentorsLoading() =
      GetPostsFollowingMentorsLoading;
  const factory CommunityPostState.getPostsFollowingMentorsSuccess() =
      GetPostsFollowingMentorsSuccess;
  const factory CommunityPostState.getPostsFollowingMentorsFailure(
      String message) = GetPostsFollowingMentorsFailure;
}
