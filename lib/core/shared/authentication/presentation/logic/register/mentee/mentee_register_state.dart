part of 'mentee_register_cubit.dart';

@immutable
sealed class MenteeRegisterState {}

final class RegisterInitialState extends MenteeRegisterState {}

final class RegisterLoadingState extends MenteeRegisterState {}

final class RegisterSuccessState extends MenteeRegisterState {}

final class RegisterErrorState extends MenteeRegisterState {
  final String? error;

  RegisterErrorState(this.error);
}

final class ImageSelectedSuccessState extends MenteeRegisterState {}

final class ImageSelectedErrorState extends MenteeRegisterState {}
