import 'package:get_it/get_it.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/datasource/auth_dependency.dart';
import 'package:mentorea_mobile_app/shared/community/data/datasource/community_dependency.dart';
import 'package:mentorea_mobile_app/shared/settings/data/datasource/settings_dependency.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/explore_dependency.dart';
import 'package:mentorea_mobile_app/shared/profile/data/datasource/profile_dependency.dart';
import 'package:mentorea_mobile_app/users/mentee/home/data/datasource/recommended_mentor_dependency.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/datasource/schedule_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await Future.wait([
    authDependency(),
    settingsDependency(),
    recommendedMentorDependency(),
    exploreMentorDependency(),
    profileDependency(),
    scheduleDependency(),
    communityDependency(),
  ]);
}
