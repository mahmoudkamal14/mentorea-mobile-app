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
    user: 'Mentee',
  ),
  UserTypeModel(
    image: 'assets/images/mentor.svg',
    userType: UserType.mentor,
    user: 'Mentor',
  ),
];
