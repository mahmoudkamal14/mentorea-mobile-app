import 'package:get_it/get_it.dart';
import 'package:mentorea_mobile_app/features/authentication/data/datasource/auth_dependency.dart';
import 'package:mentorea_mobile_app/features/bookings/data/datasource/booking_dependency.dart';
import 'package:mentorea_mobile_app/features/chat/data/datasource/chat_dependency.dart';
import 'package:mentorea_mobile_app/features/community/data/datasource/community_dependency.dart';
import 'package:mentorea_mobile_app/features/settings/data/datasource/settings_dependency.dart';
import 'package:mentorea_mobile_app/features/explore/data/datasource/explore_dependency.dart';
import 'package:mentorea_mobile_app/features/profile/data/datasource/profile_dependency.dart';
import 'package:mentorea_mobile_app/features/home/data/datasource/recommended_mentor_dependency.dart';
import 'package:mentorea_mobile_app/features/schedule/data/datasource/schedule_dependency.dart';

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
    bookingDependency(),
    chatDependency(),
  ]);
}
