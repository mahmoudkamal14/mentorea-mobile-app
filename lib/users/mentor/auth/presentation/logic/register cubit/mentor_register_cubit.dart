import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/logic/register%20cubit/mentor_register_state.dart';

class MentorRegisterCubit extends Cubit<MentorRegisterState> {
  MentorRegisterCubit() : super(MentorRegisterInitialState());

  static MentorRegisterCubit get(context) => BlocProvider.of(context);

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
      emit(MentorProfileImagePickerSuccessState());
    } else {
      emit(MentorProfileImagePickerErrorState());
    }
  }
}
