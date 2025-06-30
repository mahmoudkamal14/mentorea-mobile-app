import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/login_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/forgot%20password/forgot_password_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/forgot%20password/reset_password_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/register_fcm_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/register/mentee_register_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/register/mentor_register_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/register/resend_otp_confirm_email_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/datasource/auth_service.dart';

class AuthRepository {
  final AuthServices _authServices;

  AuthRepository(this._authServices);

  Future<ApiResult<LoginResponseModel>> loginWithEmailPassword(
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
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
    }
  }

  Future<ApiResult<void>> registerFcmToken(
    RegisterFcmRequestBody registerFcmRequestBody,
  ) async {
    try {
      final result = await _authServices.registerFcmToken(
        registerFcmRequestBody,
      );
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> menteeRegister(
    MenteeRegisterRequestBody mentee, {
    required MultipartFile? imageFile,
    required List<String> fieldInterests,
  }) async {
    try {
      final formData = FormData();

      formData.fields.addAll([
        MapEntry('Email', mentee.email),
        MapEntry('Password', mentee.password),
        MapEntry('Name', mentee.name),
        MapEntry('Location', mentee.location),
        MapEntry('Gender', mentee.gender),
        MapEntry('PirthDate.Year', mentee.pirthDateYear.toString()),
        MapEntry('PirthDate.Month', mentee.pirthDateMonth.toString()),
        MapEntry('PirthDate.Day', mentee.pirthDateDay.toString()),
        MapEntry('About', mentee.about),
      ]);

      for (final interest in fieldInterests) {
        formData.fields.add(MapEntry('FieldInterests', interest));
      }

      if (imageFile != null) {
        formData.files.add(MapEntry('Image', imageFile));
      }

      final result = await _authServices.menteeRegister(formData);
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
    }
  }

  Future<ApiResult<void>> mentorRegister(MentorRegisterRequestBody mentor,
      {required MultipartFile? imageFile}) async {
    try {
      final FormData formData = FormData.fromMap({
        'Email': mentor.email,
        'Password': mentor.password,
        'Name': mentor.name,
        'Location': mentor.location,
        'Image': imageFile,
        'Gender': mentor.gender,
        'PirthDate.Year': mentor.pirthDateYear,
        'PirthDate.Month': mentor.pirthDateMonth,
        'PirthDate.Day': mentor.pirthDateDay,
        'NumberOfExperience': mentor.numberOfExperience,
        'PriceOfSession': mentor.priceOfSession,
        'About': mentor.about,
        'FieldId': mentor.fieldId,
      });

      final result = await _authServices.mentorRegister(formData);
      return ApiResult.success(result);
    } catch (error) {
      showToast(
        msg: ApiErrorHandler.handleError(error).message,
        color: Colors.red,
      );
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
    }
  }

  Future<ApiResult<void>> confirmEmail({
    required String email,
    required String code,
  }) async {
    try {
      final result = await _authServices.confirmEmail(email, code);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
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
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
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
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
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
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
    }
  }

  Future<ApiResult<List<FieldResponseModel>>> getAllFields() async {
    try {
      final result = await _authServices.getAllFields();

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handleError(error).message,
      );
    }
  }
}
