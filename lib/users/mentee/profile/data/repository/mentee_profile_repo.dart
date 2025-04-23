import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/datasource/mentee_profile_service.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_update_profile_request.dart';

class MenteeProfileRepo {
  final MenteeProfileService _profileService;

  MenteeProfileRepo(this._profileService);

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

  Future<ApiResult<void>> updateMenteeProfile(MultipartFile imageFile,
      MenteeUpdateProfileRequest menteeUpdateProfileRequest) async {
    try {
      final token =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);
      final FormData formData = FormData.fromMap({
        "Name": menteeUpdateProfileRequest.name,
        "location": menteeUpdateProfileRequest.location,
        "about": menteeUpdateProfileRequest.about,
        "Image": imageFile,
      });
      final result =
          await _profileService.updateMenteeProfile('Bearer $token', formData);

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
          LogoutRequestBody(refreshToken: refreshToken, token: accessToken));

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
