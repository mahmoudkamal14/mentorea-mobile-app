import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/comment_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/comments_list_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/create_comment_request_body.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/toggle_like_request_body.dart';
import 'package:mentorea_mobile_app/shared/community/data/repository/community_reacts_repository.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/react/community_react_state.dart';

class CommunityReactCubit extends Cubit<CommunityReactState> {
  final CommunityReactsRepository communityReactsRepository;
  CommunityReactCubit(this.communityReactsRepository)
      : super(const CommunityReactState.initial());

  static CommunityReactCubit get(context) =>
      BlocProvider.of<CommunityReactCubit>(context);

  TextEditingController commentController = TextEditingController();

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
  Future<void> getUsersWhoLikedPost(String postId, int? pageNumber) async {
    emit(const CommunityReactState.getUsersWhoLikedPostLoading());

    final response = await communityReactsRepository.getUsersLikedPost(
        postId, pageNumber ?? 1);

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
  Future<void> createComment({
    required String postId,
    required String userId,
    required String content,
  }) async {
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
  Future<void> updateComment({
    required String postId,
    required String commentId,
    required String content,
  }) async {
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
  Future<void> deleteComment(
      {required String postId, required String commentId}) async {
    emit(const CommunityReactState.deleteCommentLoading());

    final response =
        await communityReactsRepository.deleteComment(postId, commentId);

    if (response is Success<void>) {
      emit(const CommunityReactState.deleteCommentSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityReactState.deleteCommentFailure(response.error));
    }
  }

  CommentResponseModel? commentResponseModel;
  CommentsListResponseModel? commentsListResponseModel;

  // Get All Comments
  Future<void> getAllComments(
      {required String postId, int? pageNumber, String? sortDirection}) async {
    emit(const CommunityReactState.getAllCommentsLoading());

    final response = await communityReactsRepository.getAllCommentsPost(
      postId,
      pageNumber ?? 1,
      sortDirection ?? 'DESC',
    );

    if (response is Success<CommentsListResponseModel>) {
      commentsListResponseModel = response.data;
      emit(const CommunityReactState.getAllCommentsSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.getAllCommentsFailure(response.toString()));
    }
  }

  // Get Comment Details
  Future<void> getCommentDetails(String postId, String commentId) async {
    emit(const CommunityReactState.getCommentDetailsLoading());

    final response =
        await communityReactsRepository.getCommentPost(postId, commentId);

    if (response is Success<CommentResponseModel>) {
      commentResponseModel = response.data;
      emit(const CommunityReactState.getCommentDetailsSuccess());
    } else if (response is Failure) {
      emit(CommunityReactState.getCommentDetailsFailure(response.toString()));
    }
  }
}
