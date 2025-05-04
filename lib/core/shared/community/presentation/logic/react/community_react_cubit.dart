import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/create_comment_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/toggle_like_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/repository/community_reacts_repository.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_state.dart';

class CommunityReactCubit extends Cubit<CommunityReactState> {
  final CommunityReactsRepository communityReactsRepository;
  CommunityReactCubit(this.communityReactsRepository)
      : super(const CommunityReactState.initial());

  static CommunityReactCubit get(context) =>
      BlocProvider.of<CommunityReactCubit>(context);

  // Toggle Like Post
  Future<void> toggleLikePost(String postId, String userId) async {
    emit(const CommunityReactState.toggleLikePostLoading());

    final response = await communityReactsRepository.toggleLikePost(
        postId, ToggleLikeRequestBody(userId: userId));

    if (response is Success) {
      emit(const CommunityReactState.toggleLikePostSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.toggleLikePostFailure(response.error));
    }
  }

  // Get Users Who Liked Post
  Future<void> getUsersWhoLikedPost(String postId) async {
    emit(const CommunityReactState.getUsersWhoLikedPostLoading());

    final response = await communityReactsRepository.getUsersLikedPost(postId);

    if (response is Success<void>) {
      emit(const CommunityReactState.getUsersWhoLikedPostSuccess());
    } else if (response is Failure<void>) {
      emit(
          CommunityReactState.getUsersWhoLikedPostFailure(response.toString()));
    }
  }

  // Count Likes Post
  Future<void> countLikePost(String postId) async {
    emit(const CommunityReactState.countLikePostLoading());

    final response = await communityReactsRepository.countLikePost(postId);

    if (response is Success) {
      emit(const CommunityReactState.countLikePostSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.countLikePostFailure(response.error));
    }
  }

  // Create Comment
  Future<void> createComment(
      String postId, String userId, String content) async {
    emit(const CommunityReactState.createCommentLoading());

    final response = await communityReactsRepository.createComment(
        postId, CreateCommentRequestBody(content: content));

    if (response is Success) {
      emit(const CommunityReactState.createCommentSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.createCommentFailure(response.toString()));
    }
  }

  // Update Comment
  Future<void> updateComment(
      String postId, String commentId, String content) async {
    emit(const CommunityReactState.updateCommentLoading());

    final response = await communityReactsRepository.updateComment(
        postId, commentId, CreateCommentRequestBody(content: content));

    if (response is Success<void>) {
      emit(const CommunityReactState.updateCommentSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityReactState.updateCommentFailure(response.error));
    }
  }

  // Delete Comment
  Future<void> deleteComment(String postId, String commentId) async {
    emit(const CommunityReactState.deleteCommentLoading());

    final response =
        await communityReactsRepository.deleteComment(postId, commentId);

    if (response is Success<void>) {
      emit(const CommunityReactState.deleteCommentSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityReactState.deleteCommentFailure(response.error));
    }
  }

  // Get All Comments
  Future<void> getAllComments(String postId) async {
    emit(const CommunityReactState.getAllCommentsLoading());

    final response = await communityReactsRepository.getAllCommentsPost(postId);

    if (response is Success<void>) {
      emit(const CommunityReactState.getAllCommentsSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityReactState.getAllCommentsFailure(response.toString()));
    }
  }

  // Get Comment Details
  Future<void> getCommentDetails(String postId, String commentId) async {
    emit(const CommunityReactState.getCommentDetailsLoading());

    final response =
        await communityReactsRepository.getCommentPost(postId, commentId);

    if (response is Success) {
      emit(const CommunityReactState.getCommentDetailsSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.getCommentDetailsFailure(response.toString()));
    }
  }
}
