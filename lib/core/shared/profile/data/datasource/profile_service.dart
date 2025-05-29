import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/logout_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/profile/data/model/mentor_profile_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ProfileService {
  factory ProfileService(Dio dio, {String baseUrl}) = _ProfileService;

  @GET(ApiConstants.getMenteeProfile)
  Future<MenteeProfileResponseModel> getMenteeProfile(
    @Header('Authorization') String userToken,
  );

  @GET(ApiConstants.getMentorProfile)
  Future<MentorProfileResponseModel> getMentorProfile(
    @Header('Authorization') String userToken,
  );

  @POST(ApiConstants.logout)
  Future<void> logoutUser(
    @Body() LogoutRequestBody logoutRequestBody,
  );
}
