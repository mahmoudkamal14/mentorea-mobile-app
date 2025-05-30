part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitialState extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class RegisterSuccessState extends RegisterState {}

final class RegisterErrorState extends RegisterState {
  final String error;

  RegisterErrorState({required this.error});
}

final class GetAllFieldsLoadingState extends RegisterState {}

final class GetAllFieldsSuccessState extends RegisterState {}

final class GetAllFieldsErrorState extends RegisterState {
  final String error;

  GetAllFieldsErrorState(this.error);
}

final class ImageSelectedSuccessState extends RegisterState {}

final class ImageSelectedErrorState extends RegisterState {}

final class FieldSelectionUpdated extends RegisterState {}
