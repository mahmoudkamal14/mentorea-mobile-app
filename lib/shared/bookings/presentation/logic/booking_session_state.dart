abstract class BookingSessionState {}

final class BookingSessionInitial extends BookingSessionState {}

final class CreateSessionLoadingState extends BookingSessionState {}

final class CreateSessionSuccessState extends BookingSessionState {}

final class CreateSessionErrorState extends BookingSessionState {
  final String error;

  CreateSessionErrorState({required this.error});
}
