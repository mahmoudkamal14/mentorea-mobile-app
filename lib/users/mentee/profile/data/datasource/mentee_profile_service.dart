import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/model/change_password_request_body.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'mentee_profile_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MenteeProfileService {
  factory MenteeProfileService(Dio dio, {String baseUrl}) =
      _MenteeProfileService;

  @GET(ApiConstants.getMenteeProfile)
  Future<MenteeProfileResponseModel> getMenteeProfile(
    @Header('Authorization') String userToken,
  );

  @GET(ApiConstants.updateMenteeProfile)
  Future<void> updateMenteeProfile(
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
