import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_update_profile_request.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/repository/mentee_profile_repo.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/profile/mentee_profile_state.dart';

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

  File? profileImageFile;
  ImagePicker picker = ImagePicker();
  Future<void> getProfileImage(ImageSource imageSource) async {
    XFile? pickedFile;
    if (imageSource == ImageSource.gallery) {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } else if (imageSource == ImageSource.camera) {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }
    if (pickedFile != null) {
      profileImageFile = File(pickedFile.path);
      emit(ImageSelectedSuccessState());
    } else {
      emit(ImageSelectedErrorState());
    }
  }

  Future<void> updateMenteeProfile() async {
    emit(GetMenteeProfileLoadingState());

    var file = await MultipartFile.fromFile(
      profileImageFile!.path,
      filename: "problem.png",
    );

    final response = await _repository.updateMenteeProfile(
        file,
        MenteeUpdateProfileRequest(
          name: nameController.text,
          location: locationController.text,
          about: aboutController.text,
        ));

    if (response is Success<MenteeProfileResponseModel>) {
      profileModel = response.data;
      emit(GetMenteeProfileSuccessState(profileModel: response.data));
    } else if (response is Failure) {
      emit(GetMenteeProfileErrorState(error: response.toString()));
    }
  }

  Future<void> logoutUser() async {
    emit(LogoutLoadingState());

    final response = await _repository.logoutUser();

    if (response is Success) {
      emit(LogoutSuccessState());
    } else if (response is Failure) {
      emit(LogoutErrorState(error: response.toString()));
    }
  }
}
