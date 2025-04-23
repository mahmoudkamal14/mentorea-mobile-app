part of 'forgot_password_cubit.dart';

@immutable
sealed class ForgotPasswordState {}

final class ForgotPasswordInitialState extends ForgotPasswordState {}

final class ForgotPasswordLoadingState extends ForgotPasswordState {}

final class ForgotPasswordSuccessState extends ForgotPasswordState {}

final class ForgotPasswordErrorState extends ForgotPasswordState {
  final String message;
  ForgotPasswordErrorState({required this.message});
}

final class ResetPasswordLoadingState extends ForgotPasswordState {}

final class ResetPasswordSuccessState extends ForgotPasswordState {}

final class ResetPasswordErrorState extends ForgotPasswordState {
  final String message;

  ResetPasswordErrorState({required this.message});
}
