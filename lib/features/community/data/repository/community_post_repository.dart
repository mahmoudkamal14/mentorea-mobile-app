import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/community/data/datasource/community_post_remote_data_source.dart';
import 'package:mentorea_mobile_app/features/community/data/model/post/create_post_request_body.dart';
import 'package:mentorea_mobile_app/features/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/features/community/data/model/post/posts_list_response_model.dart';

class CommunityPostRepository {
  final CommunityPostRemoteDataSource _remoteDataSource;

  CommunityPostRepository(this._remoteDataSource);

  Future<ApiResult<PostResponseModel>> createPost(
    CreatePostRequestBody createPostRequestBody,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.createPost(
        userToken!,
        createPostRequestBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> updatePost(
    CreatePostRequestBody createPostRequestBody,
    String postId,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.updatePost(
        userToken!,
        createPostRequestBody,
        postId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> deletePost(String postId) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.deletePost(userToken!, postId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<PostsListResponseModel>> getAllPosts() async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.getAllPosts(userToken!, 'DESC');
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<PostsListResponseModel>> getPostsFollowingMentors() async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response =
          await _remoteDataSource.getPostsFollowingMentors(userToken!);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<PostResponseModel>> getPostDetails(String postId) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response =
          await _remoteDataSource.getPostDetails(userToken!, postId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }
}
