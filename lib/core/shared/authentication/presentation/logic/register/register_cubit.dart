import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/auth_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/client_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/resend_otp_confirm_email_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/repository/auth_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;
  RegisterCubit(this._authRepository) : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<FormState> formKeyConfirm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  AuthResponseModel? userModel;

  void emitRegisterStates() async {
    emit(RegisterLoadingState());
    final response = await _authRepository.registerWithEmailPassword(
      ClientRegisterRequestBody(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    if (response is Success<AuthResponseModel>) {
      userModel = response.data;
      saveUserEmail(emailController.text);
      emit(RegisterSuccessState(authResponseModel: userModel!));
    } else if (response is Failure<AuthResponseModel>) {
      emit(RegisterErrorState(response.error.toString()));
    }
  }

  void confirmEmail({required String email, required String otpCode}) async {
    emit(ConfirmEmailLoadingState());
    final response = await _authRepository.confirmEmail(
      email: email,
      otpCode: otpCode,
    );

    if (response is Success) {
      emit(ConfirmEmailSuccessState());
    } else if (response is Failure) {
      emit(ConfirmEmailErrorState(response.error.toString()));
    }
  }

  void resendOtpConfirmEmail() async {
    emit(ResendConfirmEmailLoadingState());
    final response = await _authRepository.resendOtpConfirmEmail(
      ResendOptConfirmEmailRequestBody(
        email: CacheHelper.getSecuredData(key: CacheHelperKeys.email),
      ),
    );

    if (response is Success) {
      emit(ResendConfirmEmailSuccessState());
    } else if (response is Failure) {
      emit(ResendConfirmEmailErrorState(response.error.toString()));
    }
  }

  saveUserEmail(String email) {
    CacheHelper.saveSecuredData(key: CacheHelperKeys.email, value: email);
  }
}
