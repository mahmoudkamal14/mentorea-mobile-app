import 'package:mentorea_mobile_app/generated/l10n.dart';

enum UserType { mentee, mentor }

class UserTypeModel {
  final String image;
  final UserType userType;
  final String user;

  UserTypeModel({
    required this.image,
    required this.userType,
    required this.user,
  });
}

List<UserTypeModel> listUserType = [
  UserTypeModel(
    image: 'assets/images/mentee.svg',
    userType: UserType.mentee,
    user: S.current.mentee,
  ),
  UserTypeModel(
    image: 'assets/images/mentor.svg',
    userType: UserType.mentor,
    user: S.current.mentor,
  ),
];
