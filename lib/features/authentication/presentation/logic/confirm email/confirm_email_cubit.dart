import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/register/resend_otp_confirm_email_request_body.dart';
import 'package:mentorea_mobile_app/features/authentication/data/repository/auth_repository.dart';

part 'confrim_email_state.dart';

class ConfirmEmailCubit extends Cubit<ConfirmEmailState> {
  final AuthRepository _authRepository;
  ConfirmEmailCubit(this._authRepository) : super(RegisterInitialState());

  static ConfirmEmailCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKeyConfirm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginResponseModel? userModel;

  void confirmEmail({
    required String code,
    required String email,
  }) async {
    emit(ConfirmEmailLoadingState());
    final response =
        await _authRepository.confirmEmail(code: code, email: email);

    if (response is Success) {
      emit(ConfirmEmailSuccessState());
    } else if (response is Failure) {
      emit(ConfirmEmailErrorState(response.error.toString()));
    }
  }

  void resendOtpConfirmEmail({required String email}) async {
    emit(ResendConfirmEmailLoadingState());
    final response = await _authRepository.resendOtpConfirmEmail(
      ResendOptConfirmEmailRequestBody(
        email: email,
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
