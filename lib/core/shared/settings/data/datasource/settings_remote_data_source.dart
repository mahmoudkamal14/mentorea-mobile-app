import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/model/change_password_request_body.dart';
import 'package:retrofit/retrofit.dart';

part 'settings_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SettingsRemoteDataSource {
  factory SettingsRemoteDataSource(Dio dio, {String baseUrl}) =
      _SettingsRemoteDataSource;

  @GET(ApiConstants.updateMenteeProfile)
  Future<void> updateMenteeProfile(
    @Header('Authorization') String userToken,
    @Body() FormData formData,
  );

  @GET(ApiConstants.updateMentorProfile)
  Future<void> updateMentorProfile(
    @Header('Authorization') String userToken,
    @Body() FormData formData,
  );

  @GET(ApiConstants.changePasswordAccount)
  Future<void> changePasswordAccount(
    @Header('Authorization') String userToken,
    @Body() ChangePasswordRequestBody changePasswordRequestBody,
  );

  @POST(ApiConstants.logout)
  Future<void> logoutUser(
    @Body() LogoutRequestBody logoutRequestBody,
  );
}
