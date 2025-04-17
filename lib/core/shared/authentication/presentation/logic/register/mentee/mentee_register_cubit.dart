import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/mentee_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/repository/auth_repository.dart';

part 'mentee_register_state.dart';

class MenteeRegisterCubit extends Cubit<MenteeRegisterState> {
  final AuthRepository _authRepository;
  MenteeRegisterCubit(this._authRepository) : super(RegisterInitialState());

  static MenteeRegisterCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<FormState> formKeyConfirm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController fieldInterestsController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  File? problemImageFile;
  ImagePicker picker = ImagePicker();
  Future<void> getProblemImage(ImageSource imageSource) async {
    XFile? pickedFile;
    if (imageSource == ImageSource.gallery) {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } else if (imageSource == ImageSource.camera) {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }
    if (pickedFile != null) {
      problemImageFile = File(pickedFile.path);
      emit(ImageSelectedSuccessState());
    } else {
      emit(ImageSelectedErrorState());
    }
  }

  void menteeRegister({
    required int pirthDateYear,
    required int pirthDateMonth,
    required int pirthDateDay,
    required String gender,
    required List<String> fieldInterests,
  }) async {
    emit(RegisterLoadingState());
    var file = await MultipartFile.fromFile(
      problemImageFile!.path,
      filename: "problem.png",
    );
    final response = await _authRepository.menteeRegister(
        MenteeRegisterRequestBody(
          email: emailController.text,
          password: passwordController.text,
          name: nameController.text,
          location: locationController.text,
          gender: gender,
          pirthDateYear: pirthDateYear,
          pirthDateMonth: pirthDateMonth,
          pirthDateDay: pirthDateDay,
          fieldInterests: fieldInterests,
          about: aboutController.text,
        ),
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
