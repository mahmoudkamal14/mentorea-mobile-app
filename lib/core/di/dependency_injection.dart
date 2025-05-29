import 'package:get_it/get_it.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/datasource/auth_dependency.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/datasource/community_dependency.dart';
import 'package:mentorea_mobile_app/core/shared/settings/data/datasource/settings_dependency.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/explore_dependency.dart';
import 'package:mentorea_mobile_app/core/shared/profile/data/datasource/profile_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await Future.wait([
    authDependency(),
    settingsDependency(),
    exploreMentorDependency(),
    profileDependency(),
    communityDependency(),
  ]);
}
