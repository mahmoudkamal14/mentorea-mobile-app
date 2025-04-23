part of 'mentor_register_cubit.dart';

@immutable
sealed class MentorRegisterState {}

final class MentorRegisterInitialState extends MentorRegisterState {}

final class RegisterLoadingState extends MentorRegisterState {}

final class RegisterSuccessState extends MentorRegisterState {}

final class RegisterErrorState extends MentorRegisterState {
  final String? error;

  RegisterErrorState(this.error);
}

final class ImageSelectedSuccessState extends MentorRegisterState {}

final class ImageSelectedErrorState extends MentorRegisterState {}
