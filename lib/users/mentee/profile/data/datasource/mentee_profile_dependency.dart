import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/datasource/mentee_profile_service.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/repository/mentee_profile_repo.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_cubit.dart';

Future<void> menteeProfileDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  getIt.registerLazySingleton<MenteeProfileService>(
      () => MenteeProfileService(dio));

  getIt.registerLazySingleton<MenteeProfileRepo>(
      () => MenteeProfileRepo(getIt()));

  /// LOGIC

  getIt.registerFactory<MenteeProfileCubit>(() => MenteeProfileCubit(getIt()));
}
