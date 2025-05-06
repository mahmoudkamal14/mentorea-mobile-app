import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_mentor_state.freezed.dart';

@freezed
class ExploreMentorState with _$ExploreMentorState {
  const factory ExploreMentorState.initial() = _Initial;

  // Getting all specializations
  const factory ExploreMentorState.getAllSpecializationsLoading() =
      GetAllSpecializationsLoading;
  const factory ExploreMentorState.getAllSpecializationsSuccess() =
      GetAllSpecializationsSuccess;
  const factory ExploreMentorState.getAllSpecializationsFailure(String error) =
      GetAllSpecializationsFailure;

  // Searching for mentors
  const factory ExploreMentorState.searchingForMentorLoading() =
      SearchingForMentorLoading;
  const factory ExploreMentorState.searchingForMentorSuccess() =
      SearchingForMentorSuccess;
  const factory ExploreMentorState.searchingForMentorFailure(String error) =
      SearchingForMentorFailure;

  // Get mentors by specialization
  const factory ExploreMentorState.getMentorsBySpecializationLoading() =
      GetMentorsBySpecializationLoading;
  const factory ExploreMentorState.getMentorsBySpecializationSuccess() =
      GetMentorsBySpecializationSuccess;
  const factory ExploreMentorState.getMentorsBySpecializationFailure(
      String error) = GetMentorsBySpecializationFailure;
}
