import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/repository/mentee_profile_repo.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_state.dart';

class MenteeProfileCubit extends Cubit<MenteeProfileState> {
  final MenteeProfileRepo _repository;
  MenteeProfileCubit(this._repository) : super(MenteeProfileInitialState());

  static MenteeProfileCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  MenteeProfileResponseModel? profileModel;

  Future<void> getMenteeProfile() async {
    emit(GetMenteeProfileLoadingState());

    final response = await _repository.getMenteeProfile();

    if (response is Success<MenteeProfileResponseModel>) {
      profileModel = response.data;
      emit(GetMenteeProfileSuccessState(profileModel: response.data));
    } else if (response is Failure) {
      emit(GetMenteeProfileErrorState(error: response.toString()));
    }
  }
}
