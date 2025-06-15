abstract class SessionState {}

final class SessionInitialState extends SessionState {}

// Get All Session For User
final class GetAllSessionForUserLoadingState extends SessionState {}

final class GetAllSessionForUserSuccessState extends SessionState {}

final class GetAllSessionForUserErrorState extends SessionState {}

// Get Session By Id
final class GetSessionByIdLoadingState extends SessionState {}

final class GetSessionByIdSuccessState extends SessionState {}

final class GetSessionByIdErrorState extends SessionState {}

// Get Session By Id
final class MarkSessionAttendedByOnePartyLoadingState extends SessionState {}

final class MarkSessionAttendedByOnePartySuccessState extends SessionState {}

final class MarkSessionAttendedByOnePartyErrorState extends SessionState {}

final class CancelSessionLoadingState extends SessionState {}

final class CancelSessionSuccessState extends SessionState {}

final class CancelSessionErrorState extends SessionState {}
