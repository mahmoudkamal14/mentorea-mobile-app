import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/settings/data/model/change_password_request_body.dart';
import 'package:mentorea_mobile_app/features/settings/data/model/mentee_update_profile_request.dart';
import 'package:mentorea_mobile_app/features/settings/data/model/mentor_update_profile_request.dart';
import 'package:mentorea_mobile_app/features/settings/data/repository/settings_repository.dart';
import 'package:mentorea_mobile_app/features/settings/presentation/logic/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepository _repository;
  SettingsCubit(this._repository) : super(const SettingsState.initial());

  static SettingsCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

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
      emit(const SettingsState.imageSelectedSuccess());
    } else {
      emit(const SettingsState.imageSelectedError());
    }
  }

  Future<void> updateMenteeProfile() async {
    emit(const SettingsState.updateProfileLoading());

    final response = await _repository.updateMenteeProfile(
      MenteeUpdateProfileRequest(
        name: nameController.text,
        location: locationController.text,
        about: aboutController.text,
      ),
    );

    if (response is Success) {
      emit(const SettingsState.updateProfileSuccess());
    } else if (response is Failure) {
      emit(SettingsState.updateProfileFailure(error: response.toString()));
    }
  }

  Future<void> updateMentorProfile({required int priceOfSession}) async {
    emit(const SettingsState.updateProfileLoading());

    final response = await _repository.updateMentorProfile(
      MentorUpdateProfileRequest(
        name: nameController.text,
        location: locationController.text,
        priceOfSession: priceOfSession,
        about: aboutController.text,
      ),
    );

    if (response is Success) {
      emit(const SettingsState.updateProfileSuccess());
    } else if (response is Failure) {
      emit(SettingsState.updateProfileFailure(error: response.toString()));
    }
  }

  Future<void> changePasswordAccount() async {
    emit(const SettingsState.changePasswordLoading());

    final response =
        await _repository.changePasswordAccount(ChangePasswordRequestBody(
      currentPassword: currentPasswordController.text,
      newPassword: newPasswordController.text,
    ));

    if (response is Success) {
      emit(const SettingsState.changePasswordSuccess());
    } else if (response is Failure) {
      emit(SettingsState.changePasswordFailure(error: response.toString()));
    }
  }

  Future<void> updateProfileImage() async {
    emit(const SettingsState.updateProfileImageLoading());

    var file = await MultipartFile.fromFile(
      profileImageFile!.path,
      filename: "profileImageFile.jpg",
    );

    final response = await _repository.updateProfileImage(file);

    if (response is Success) {
      emit(const SettingsState.updateProfileImageSuccess());
    } else if (response is Failure) {
      emit(SettingsState.updateProfileImageFailure(error: response.toString()));
    }
  }

  Future<void> logoutUser() async {
    emit(const SettingsState.logoutLoading());

    final response = await _repository.logoutUser();

    if (response is Success) {
      emit(const SettingsState.logoutSuccess());
    } else if (response is Failure) {
      emit(SettingsState.logoutFailure(error: response.toString()));
    }
  }
}
