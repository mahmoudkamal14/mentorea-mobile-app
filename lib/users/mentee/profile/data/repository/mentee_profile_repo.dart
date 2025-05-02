import 'dart:developer';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/datasource/mentee_profile_service.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';

class MenteeProfileRepo {
  final MenteeProfileService _profileService;

  MenteeProfileRepo(this._profileService);

  Future<ApiResult<MenteeProfileResponseModel>> getMenteeProfile() async {
    try {
      final token =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final refreshToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.refreshToken);
      final result = await _profileService.getMenteeProfile('Bearer $token');

      log('Refresh token: $refreshToken');

      return ApiResult.success(result);
    } catch (error) {
      log('Refresh token: $error');
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
