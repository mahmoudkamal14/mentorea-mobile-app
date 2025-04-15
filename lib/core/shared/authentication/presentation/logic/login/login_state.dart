part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitialState extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginErrorState extends LoginState {
  final String message;

  LoginErrorState({required this.message});
}

final class LoginSuccessState extends LoginState {
  final AuthResponseModel authResponseModel;

  LoginSuccessState({required this.authResponseModel});
}

final class ForgotPasswordLoadingState extends LoginState {}

final class ForgotPasswordErrorState extends LoginState {
  final String message;

  ForgotPasswordErrorState({required this.message});
}

final class ForgotPasswordSuccessState extends LoginState {
  final String message;
  ForgotPasswordSuccessState({required this.message});
}
