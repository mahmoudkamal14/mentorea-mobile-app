import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mentee_register_state.dart';

class MenteeRegisterCubit extends Cubit<MenteeRegisterState> {
  MenteeRegisterCubit() : super(MenteeRegisterInitialState());

  static MenteeRegisterCubit get(context) => BlocProvider.of(context);

  // Pick an image
  File? profileImageFile;
  ImagePicker picker = ImagePicker();
  Future<void> getProfileImage(String imageSource) async {
    XFile? pickedFile;
    if (imageSource == 'gallery') {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } else if (imageSource == 'camera') {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }
    if (pickedFile != null) {
      profileImageFile = File(pickedFile.path);
      emit(MenteeProfileImagePickerSuccessState());
    } else {
      emit(MenteeProfileImagePickerErrorState());
    }
  }
}
