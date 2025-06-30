abstract class ProfileState {}

final class ProfileInitialState extends ProfileState {}

// Get Profile
final class GetProfileLoadingState extends ProfileState {}

final class GetProfileSuccessState extends ProfileState {}

final class GetProfileErrorState extends ProfileState {
  final String error;

  GetProfileErrorState({required this.error});
}

// Logout
final class LogoutLoadingState extends ProfileState {}

final class LogoutSuccessState extends ProfileState {}

final class LogoutErrorState extends ProfileState {
  final String error;

  LogoutErrorState({required this.error});
}
