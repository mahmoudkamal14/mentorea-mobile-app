import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/datasource/community_reacts_remote_data_scource.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/comment_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/comments_list_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/create_comment_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/toggle_like_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/users_liked_post_response_model.dart';

class CommunityReactsRepository {
  final CommunityReactsRemoteDataScource _remoteDataSource;

  CommunityReactsRepository(this._remoteDataSource);

  Future<ApiResult<void>> toggleLikePost(
      String postId, ToggleLikeRequestBody toggleLikeRequestBody) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.toggleLikePost(
        userToken!,
        postId,
        toggleLikeRequestBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  /// Get users who liked a post
  Future<ApiResult<UsersLikedPostResponseModel>> getUsersLikedPost(
    String postId,
    int? pageNumber,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.usersLikedPost(
        userToken!,
        postId,
        pageNumber ?? 1,
        10,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  /// Count likes on a post
  Future<ApiResult<void>> countLikePost(String postId) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response =
          await _remoteDataSource.countLikePost(userToken!, postId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<CommentResponseModel>> createComment(
    String postId,
    CreateCommentRequestBody createCommentRequestBody,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.createComment(
        userToken!,
        postId,
        createCommentRequestBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<CommentResponseModel>> getCommentPost(
    String postId,
    String commentId,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.getCommentPost(
        userToken!,
        postId,
        commentId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> updateComment(
    String postId,
    String commentId,
    CreateCommentRequestBody createCommentRequestBody,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.updateComment(
        userToken!,
        postId,
        commentId,
        createCommentRequestBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> deleteComment(
    String postId,
    String commentId,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.deleteComment(
        userToken!,
        postId,
        commentId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<CommentsListResponseModel>> getAllCommentsPost(
    String postId,
    int? pageNumber,
    String sortDirection,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.getAllCommentsPost(
        userToken!,
        postId,
        sortDirection,
        pageNumber ?? 1,
        10,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }
}
