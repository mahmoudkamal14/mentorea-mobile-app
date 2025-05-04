import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/datasource/community_connections_remote_data_source.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/connection/toggle_follow_request_body.dart';

class CommunityConnectionsRepository {
  final CommunityConnectionsRemoteDataSource _remoteDataSource;

  CommunityConnectionsRepository(this._remoteDataSource);

  Future<ApiResult<void>> toggleFollowMentor(
    ToggleFollowRequestBody toggleFollowRequestBody,
  ) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.toggleFollowMentor(
        userToken,
        toggleFollowRequestBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> countFollowersMentor(String userId) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.countFollowersMentor(
        userToken,
        userId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> countFollowingMentor(String userId) async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.countFollowingMentor(
        userToken,
        userId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> getFollowersMentor() async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.getFollowersMentor(userToken);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> getFollowingMentor() async {
    try {
      final userToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final response = await _remoteDataSource.getFollowingMentor(userToken);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }
}
