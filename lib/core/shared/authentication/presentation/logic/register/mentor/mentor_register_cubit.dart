import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/helper/utils/enums.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/mentor_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/repository/auth_repository.dart';

part 'mentor_register_state.dart';

class MentorRegisterCubit extends Cubit<MentorRegisterState> {
  final AuthRepository _authRepository;
  MentorRegisterCubit(this._authRepository)
      : super(MentorRegisterInitialState());

  static MentorRegisterCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<FormState> formKeyConfirm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController fieldInterestsController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  LoginResponseModel? userModel;

  File? profileImageFile;
  ImagePicker picker = ImagePicker();
  Future<void> getProfileImage(ImageSourceLocation imageSource) async {
    XFile? pickedFile;
    if (imageSource == ImageSourceLocation.gallery) {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } else if (imageSource == ImageSourceLocation.camera) {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }
    if (pickedFile != null) {
      profileImageFile = File(pickedFile.path);
      emit(ImageSelectedSuccessState());
    } else {
      emit(ImageSelectedErrorState());
    }
  }

  void mentorRegister({
    required int pirthDateYear,
    required int pirthDateMonth,
    required int pirthDateDay,
    required String gender,
    required int numberOfExperience,
    required int priceOfSession,
    required String fieldId,
  }) async {
    emit(RegisterLoadingState());
    var file = await MultipartFile.fromFile(
      profileImageFile!.path,
      filename: "problem.png",
    );
    final response = await _authRepository.mentorRegister(
        MentorRegisterRequestBody(
            email: emailController.text,
            password: passwordController.text,
            name: nameController.text,
            location: locationController.text,
            gender: gender,
            pirthDateYear: pirthDateYear,
            pirthDateMonth: pirthDateMonth,
            pirthDateDay: pirthDateDay,
            numberOfExperience: numberOfExperience,
            priceOfSession: priceOfSession,
            about: aboutController.text,
            fieldId: fieldId),
        file);

    if (response is Success) {
      saveUserEmail(emailController.text);
      emit(RegisterSuccessState());
    } else if (response is Failure) {
      emit(RegisterErrorState(response.error.toString()));
    }
  }

  saveUserEmail(String email) {
    CacheHelper.saveSecuredData(key: CacheHelperKeys.email, value: email);
  }
}
