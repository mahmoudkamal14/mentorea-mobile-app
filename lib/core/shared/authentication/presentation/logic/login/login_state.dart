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
  final LoginResponseModel loginResponseModel;

  LoginSuccessState({required this.loginResponseModel});
}
