abstract class ScheduleState {}

final class ScheduleInitial extends ScheduleState {}

// Create Availability State
final class CreateAvailabilityLoadingState extends ScheduleState {}

final class CreateAvailabilitySuccessState extends ScheduleState {}

final class CreateAvailabilityErrorState extends ScheduleState {
  final String error;

  CreateAvailabilityErrorState(this.error);
}

// Get Availability State
final class GetAvailabilityLoadingState extends ScheduleState {}

final class GetAvailabilitySuccessState extends ScheduleState {}

final class GetAvailabilityErrorState extends ScheduleState {
  final String error;

  GetAvailabilityErrorState(this.error);
}

// Delete Availability State
final class DeleteAvailabilityLoadingState extends ScheduleState {}

final class DeleteAvailabilitySuccessState extends ScheduleState {}

final class DeleteAvailabilityErrorState extends ScheduleState {
  final String error;

  DeleteAvailabilityErrorState(this.error);
}

// Update Availability State
final class UpdateAvailabilityLoadingState extends ScheduleState {}

final class UpdateAvailabilitySuccessState extends ScheduleState {}

final class UpdateAvailabilityErrorState extends ScheduleState {
  final String error;

  UpdateAvailabilityErrorState(this.error);
}
