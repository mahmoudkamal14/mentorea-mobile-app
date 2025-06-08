part of 'confirm_email_cubit.dart';

@immutable
sealed class ConfirmEmailState {}

final class RegisterInitialState extends ConfirmEmailState {}

final class ConfirmEmailLoadingState extends ConfirmEmailState {}

final class ConfirmEmailSuccessState extends ConfirmEmailState {}

final class ConfirmEmailErrorState extends ConfirmEmailState {
  final String? error;

  ConfirmEmailErrorState(this.error);
}

final class ResendConfirmEmailLoadingState extends ConfirmEmailState {}

final class ResendConfirmEmailSuccessState extends ConfirmEmailState {}

final class ResendConfirmEmailErrorState extends ConfirmEmailState {
  final String? error;

  ResendConfirmEmailErrorState(this.error);
}
