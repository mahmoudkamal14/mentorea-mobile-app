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

final class ResendOTPForgotPasswordLoadingState extends ForgotPasswordState {}

final class ResendOTPForgotPasswordSuccessState extends ForgotPasswordState {}

final class ResendOTPForgotPasswordErrorState extends ForgotPasswordState {
  final String message;
  ResendOTPForgotPasswordErrorState({required this.message});
}

final class ResetPasswordLoadingState extends ForgotPasswordState {}

final class ResetPasswordSuccessState extends ForgotPasswordState {}

final class ResetPasswordErrorState extends ForgotPasswordState {
  final String message;

  ResetPasswordErrorState({required this.message});
}
