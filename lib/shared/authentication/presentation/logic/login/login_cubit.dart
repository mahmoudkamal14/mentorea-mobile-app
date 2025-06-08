import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/login/login_request_body.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/forgot%20password/forgot_password_request_body.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/login/register_fcm_request_body.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  late LoginResponseModel? userModel;
  String userRole = '';

  void emitLoginStates() async {
    emit(LoginLoadingState());
    final response = await _authRepository.loginWithEmailPassword(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    if (response is Success<LoginResponseModel>) {
      saveUserTokens(
        accessToken: response.data.token!,
        refreshToken: response.data.refreshToken!,
      );
      decodeJwt(token: response.data.token!);
      emitRegisterFcmTokenStates(userId: response.data.id!);
      userModel = response.data;
      emit(LoginSuccessState(loginResponseModel: userModel!));
    } else if (response is Failure) {
      emit(
        LoginErrorState(
          message: ApiErrorHandler.handleError(response).message,
        ),
      );
    }
  }

  void emitRegisterFcmTokenStates({required String userId}) async {
    final fcmToken = await CacheHelper.getSecuredData(
      key: CacheHelperKeys.fcmToken,
    );
    final response = await _authRepository.registerFcmToken(
      RegisterFcmRequestBody(userId: userId, deviceToken: fcmToken),
    );

    if (response is Success) {
      log('FCM token registered successfully: ${response.data}');
    } else if (response is Failure) {
      log('Error while registering FCM token: ${response.error}');
    }
  }

  void emitForgotPasswordStates() async {
    emit(LoginLoadingState());
    final response = await _authRepository.forgotPassword(
      ForgotPasswordRequestBody(email: emailController.text),
    );

    if (response is Success) {
      emit(LoginSuccessState(loginResponseModel: userModel!));
    } else if (response is Failure) {
      emit(LoginErrorState(message: response.error.toString()));
    }
  }

  decodeJwt({required String token}) async {
    Map<String, dynamic> payload = JwtDecoder.decode(token);

    userRole = payload.entries
        .firstWhere(
          (element) =>
              element.key ==
              'http://schemas.microsoft.com/ws/2008/06/identity/claims/role',
        )
        .value;

    await CacheHelper.saveData(
      key: CacheHelperKeys.userRole,
      value: userRole,
    );

    // log(const JsonEncoder.withIndent('  ').convert(payload));
  }

  saveUserTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await CacheHelper.saveSecuredData(
      key: CacheHelperKeys.accessToken,
      value: accessToken,
    );
    await CacheHelper.saveSecuredData(
      key: CacheHelperKeys.refreshToken,
      value: refreshToken,
    );
  }
}
