import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';

abstract class MenteeProfileState {}

final class MenteeProfileInitialState extends MenteeProfileState {}

// Get Profile
final class GetMenteeProfileLoadingState extends MenteeProfileState {}

final class GetMenteeProfileSuccessState extends MenteeProfileState {
  MenteeProfileResponseModel profileModel;
  GetMenteeProfileSuccessState({required this.profileModel});
}

final class GetMenteeProfileErrorState extends MenteeProfileState {
  final String error;

  GetMenteeProfileErrorState({required this.error});
}
