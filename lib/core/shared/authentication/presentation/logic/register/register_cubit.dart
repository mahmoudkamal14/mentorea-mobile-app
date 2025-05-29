import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/mentee_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/register/mentor_register_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/repository/auth_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;
  RegisterCubit(this._authRepository) : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKeyConfirm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  String selectedGender = 'Male';

  String? fieldId;
  int? numberOfExperience;
  int? priceOfSession;

  String locationUser = '';
  int? pirthDateYear;
  int? pirthDateMonth;
  int? pirthDateDay;
  List<String> fieldInterests = [];

  void selectFieldInterests(String fieldId) {
    if (fieldInterests.contains(fieldId)) {
      fieldInterests.remove(fieldId);
    } else {
      fieldInterests.add(fieldId);
    }

    log('Selected Interests: $fieldInterests');
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

  List<FieldResponseModel> allFieldsList = [];

  Future<void> getAllFields() async {
    emit(GetAllFieldsLoadingState());

    final response = await _authRepository.getAllFields();

    if (response is Success<List<FieldResponseModel>>) {
      allFieldsList = response.data;
      emit(GetAllFieldsSuccessState());
    } else {
      emit(GetAllFieldsErrorState(response.toString()));
    }
  }

  void menteeRegister() async {
    emit(RegisterLoadingState());
    var file = await MultipartFile.fromFile(
      profileImageFile!.path,
      filename: "userImage.png",
    );
    final response = await _authRepository.menteeRegister(
      imageFile: file,
      MenteeRegisterRequestBody(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        location: locationUser,
        gender: selectedGender,
        pirthDateYear: pirthDateYear!,
        pirthDateMonth: pirthDateMonth!,
        pirthDateDay: pirthDateDay!,
        fieldInterests: fieldInterests,
        about: aboutController.text,
      ),
    );

    if (response is Success) {
      saveUserEmail(emailController.text);
      emit(RegisterSuccessState());
    } else if (response is Failure) {
      emit(RegisterErrorState(error: response.toString()));
    }
  }

  void mentorRegister() async {
    emit(RegisterLoadingState());
    var file = await MultipartFile.fromFile(
      profileImageFile!.path,
      filename: "userImage.png",
    );
    final response = await _authRepository.mentorRegister(
      imageFile: file,
      MentorRegisterRequestBody(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        location: locationUser,
        gender: selectedGender,
        pirthDateYear: pirthDateYear!,
        pirthDateMonth: pirthDateMonth!,
        pirthDateDay: pirthDateDay!,
        numberOfExperience: numberOfExperience ?? 3,
        priceOfSession: priceOfSession ?? 100,
        about: aboutController.text,
        fieldId: fieldId!,
      ),
    );

    if (response is Success) {
      saveUserEmail(emailController.text);
      emit(RegisterSuccessState());
    } else if (response is Failure) {
      emit(RegisterErrorState(error: response.toString()));
    }
  }

  bool pirthDateUser() {
    if (pirthDateDay != null &&
        pirthDateMonth != null &&
        pirthDateYear != null) {
      return true;
    } else {
      return false;
    }
  }

  saveUserEmail(String email) {
    CacheHelper.saveSecuredData(key: CacheHelperKeys.email, value: email);
  }
}
