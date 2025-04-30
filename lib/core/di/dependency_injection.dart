import 'package:get_it/get_it.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/services/auth_dependency.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/datasource/mentee_profile_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Register your dependencies here
  // Shared Dependencies
  await authDependency();

  // Mentee  Dependencies
  await menteeProfileDependency();

  // Mentor Dependencies
}
