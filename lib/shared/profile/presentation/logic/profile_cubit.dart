import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/shared/profile/data/model/mentor_profile_response_model.dart';
import 'package:mentorea_mobile_app/shared/profile/data/repository/profile_repository.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _repository;
  ProfileCubit(this._repository) : super(ProfileInitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  MenteeProfileResponseModel? menteeProfile;
  MentorProfileResponseModel? mentorProfile;

  Future<void> getMenteeProfile() async {
    emit(GetProfileLoadingState());

    String userRole = await CacheHelper.getData(key: CacheHelperKeys.userRole);

    final response = await _repository.getMenteeProfile();

    if (response is Success<MenteeProfileResponseModel>) {
      menteeProfile = response.data;

      final user = UserModel(
        id: response.data.id!,
        name: response.data.name!,
        email: response.data.email!,
        role: userRole,
        image: response.data.pathPhoto,
      );

      await saveUserData(userModel: user);
      emit(GetProfileSuccessState());
    } else if (response is Failure) {
      emit(GetProfileErrorState(error: response.toString()));
    }
  }

  // Get Mentor Profile
  Future<void> getMentorProfile() async {
    emit(GetProfileLoadingState());

    String userRole = await CacheHelper.getData(key: CacheHelperKeys.userRole);

    final response = await _repository.getMentorProfile();

    if (response is Success<MentorProfileResponseModel>) {
      mentorProfile = response.data;

      final user = UserModel(
        id: response.data.id!,
        name: response.data.name!,
        email: response.data.email!,
        role: userRole,
        image: response.data.pathPhoto,
      );

      await saveUserData(userModel: user);
      emit(GetProfileSuccessState());
    } else if (response is Failure) {
      emit(GetProfileErrorState(error: response.toString()));
    }
  }

  Future<void> saveUserData({
    required UserModel userModel,
  }) async {
    final jsonString = jsonEncode(userModel.toJson());
    await CacheHelper.saveData(
      key: CacheHelperKeys.userData,
      value: jsonString,
    );
  }

  Future<void> logoutUser() async {
    emit(LogoutLoadingState());

    final response = await _repository.logoutUser();

    if (response is Success) {
      await CacheHelper.removeData(key: CacheHelperKeys.accessToken);
      await CacheHelper.removeData(key: CacheHelperKeys.refreshToken);
      await CacheHelper.removeData(key: CacheHelperKeys.userData);
      emit(LogoutSuccessState());
    } else if (response is Failure) {
      emit(LogoutErrorState(error: response.toString()));
    }
  }
}
