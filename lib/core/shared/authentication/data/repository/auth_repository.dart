import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/forgot%20password/resent_otp_forgot_password_rewuest_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/auth_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/client_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/login_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/forgot%20password/forgot_password_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/forgot%20password/reset_password_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/resend_otp_confirm_email_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/services/auth_service.dart';

class AuthRepository {
  final AuthServices _authServices;

  AuthRepository(this._authServices);

  Future<ApiResult<AuthResponseModel>> loginWithEmailPassword(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final result = await _authServices.loginWithEmailPassword(
        loginRequestBody,
      );

      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<AuthResponseModel>> registerWithEmailPassword(
    ClientRegisterRequestBody registerRequestBody,
  ) async {
    try {
      final result = await _authServices.registerWithEmailPassword(
        registerRequestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> confirmEmail({
    required String email,
    required String otpCode,
  }) async {
    try {
      final result = await _authServices.confirmEmail(email, otpCode);
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> resendOtpConfirmEmail(
    ResendOptConfirmEmailRequestBody resendOptConfirmEmailRequestBody,
  ) async {
    try {
      final result = await _authServices.resendOtpConfirmEmail(
        resendOptConfirmEmailRequestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> forgotPassword(
    ForgotPasswordRequestBody forgotPasswordRequestBody,
  ) async {
    try {
      final result = await _authServices.forgotPassword(
        forgotPasswordRequestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> resendOtpResetPassword(
    ResentOtpForgotPasswordRewuestBody resentOtpForgotPasswordRewuestBody,
  ) async {
    try {
      final result = await _authServices.resendOtpResetPassword(
        resentOtpForgotPasswordRewuestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> resetPassword(
    ResetPasswordRequestBody resetPasswordRequestBody,
  ) async {
    try {
      final result = await _authServices.resetPassword(
        resetPasswordRequestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
