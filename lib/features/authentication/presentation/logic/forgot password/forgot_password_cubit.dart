import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/forgot%20password/forgot_password_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/forgot%20password/reset_password_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/repository/auth_repository.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthRepository _authRepository;
  ForgotPasswordCubit(this._authRepository)
      : super(ForgotPasswordInitialState());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpCodeController = TextEditingController();
  GlobalKey<FormState> formKeyForgot = GlobalKey();
  GlobalKey<FormState> formKeyReset = GlobalKey();

  void forgotPassword({required String email}) async {
    emit(ForgotPasswordLoadingState());
    final response = await _authRepository.forgotPassword(
      ForgotPasswordRequestBody(email: email),
    );

    if (response is Success) {
      emit(ForgotPasswordSuccessState());
    } else if (response is Failure) {
      emit(ForgotPasswordErrorState(message: response.error.toString()));
    }
  }

  void resetPassword({required String email}) async {
    emit(ResetPasswordLoadingState());
    final response = await _authRepository.resetPassword(
      ResetPasswordRequestBody(
        email: email,
        otp: otpCodeController.text,
        newPassword: passwordController.text,
      ),
    );

    if (response is Success) {
      emit(ResetPasswordSuccessState());
    } else if (response is Failure) {
      emit(ResetPasswordErrorState(message: response.error.toString()));
    }
  }
}
