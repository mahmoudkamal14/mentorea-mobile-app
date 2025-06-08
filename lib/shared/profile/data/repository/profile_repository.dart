import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/shared/profile/data/datasource/profile_service.dart';
import 'package:mentorea_mobile_app/shared/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/shared/profile/data/model/mentor_profile_response_model.dart';

class ProfileRepository {
  final ProfileService _profileService;

  ProfileRepository(this._profileService);

  Future<ApiResult<MenteeProfileResponseModel>> getMenteeProfile() async {
    try {
      final token =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final result = await _profileService.getMenteeProfile('Bearer $token');

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<MentorProfileResponseModel>> getMentorProfile() async {
    try {
      final token =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final result = await _profileService.getMentorProfile('Bearer $token');

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> logoutUser() async {
    try {
      final accessToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);
      final refreshToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.refreshToken);
      final result = await _profileService.logoutUser(
          LogoutRequestBody(refreshToken: refreshToken!, token: accessToken!));

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
