import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/specialization_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/register_fcm_request_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/login_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/refresh_token_request.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/forgot%20password/forgot_password_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/forgot%20password/reset_password_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/resend_otp_confirm_email_request_body.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthServices {
  factory AuthServices(Dio dio, {String? baseUrl}) = _AuthServices;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> loginWithEmailPassword(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.registerFcmToken)
  Future<void> registerFcmToken(
    @Body() RegisterFcmRequestBody registerFcmRequestBody,
  );

  @POST(ApiConstants.menteeRegister)
  @MultiPart()
  Future<void> menteeRegister(
    @Body() FormData formData,
  );

  @POST(ApiConstants.mentorRegister)
  @MultiPart()
  Future<void> mentorRegister(
    @Body() FormData formData,
  );

  @POST(ApiConstants.confirmEmail)
  Future<void> confirmEmail(
    @Query("userId") String userId,
    @Query("code") String otpCode,
  );

  @POST(ApiConstants.resendOtpConfirmEmail)
  Future<void> resendOtpConfirmEmail(
    @Body() ResendOptConfirmEmailRequestBody resendOptConfirmEmailRequestBody,
  );

  @POST(ApiConstants.forgotPassword)
  Future<void> forgotPassword(
    @Body() ForgotPasswordRequestBody forgotPasswordRequestBody,
  );

  @POST(ApiConstants.resetPassword)
  Future<void> resetPassword(
    @Body() ResetPasswordRequestBody resetPasswordRequestBody,
  );

  @POST(ApiConstants.refreshToken)
  Future<LoginResponseModel> refreshToken(
    @Body() RefreshTokenRequest refreshTokenRequest,
  );

  @GET(ApiConstants.getAllFields)
  Future<List<FieldResponseModel>> getAllFields();

  @GET(ApiConstants.getAllSpecializations)
  Future<List<SpecializationResponseModel>> getAllSpecializations();
}
