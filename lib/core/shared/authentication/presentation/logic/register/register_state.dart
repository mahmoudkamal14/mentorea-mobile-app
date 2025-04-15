part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitialState extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class RegisterErrorState extends RegisterState {
  final String? message;

  RegisterErrorState(this.message);
}

final class RegisterSuccessState extends RegisterState {
  final AuthResponseModel authResponseModel;

  RegisterSuccessState({required this.authResponseModel});
}

final class ConfirmEmailLoadingState extends RegisterState {}

final class ConfirmEmailSuccessState extends RegisterState {}

final class ConfirmEmailErrorState extends RegisterState {
  final String? error;

  ConfirmEmailErrorState(this.error);
}

final class ResendConfirmEmailLoadingState extends RegisterState {}

final class ResendConfirmEmailSuccessState extends RegisterState {}

final class ResendConfirmEmailErrorState extends RegisterState {
  final String? error;

  ResendConfirmEmailErrorState(this.error);
}
