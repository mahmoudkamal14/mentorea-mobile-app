import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/datasource/settings_remote_data_source.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/model/change_password_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/model/mentee_update_profile_request.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/model/mentor_update_profile_request.dart';

class SettingsRepository {
  final SettingsRemoteDataSource _remoteDataSource;

  SettingsRepository(this._remoteDataSource);

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
      final result = await _remoteDataSource.updateMenteeProfile(
          'Bearer $token', formData);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> updateMentorProfile(MultipartFile imageFile,
      MentorUpdateProfileRequest mentorUpdateProfileRequest) async {
    try {
      final token =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);
      final FormData formData = FormData.fromMap({
        "Name": mentorUpdateProfileRequest.name,
        "location": mentorUpdateProfileRequest.location,
        "about": mentorUpdateProfileRequest.about,
        "priceOfSession": mentorUpdateProfileRequest.priceOfSession,
        "Image": imageFile,
      });
      final result = await _remoteDataSource.updateMentorProfile(
          'Bearer $token', formData);

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
      final result = await _remoteDataSource.logoutUser(
          LogoutRequestBody(refreshToken: refreshToken, token: accessToken));

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> changePasswordAccount(
      ChangePasswordRequestBody changePasswordRequestBody) async {
    try {
      final accessToken =
          await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

      final result = await _remoteDataSource.changePasswordAccount(
          accessToken, changePasswordRequestBody);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
