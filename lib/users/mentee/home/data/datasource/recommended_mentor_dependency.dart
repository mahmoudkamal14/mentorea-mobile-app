import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/users/mentee/home/data/datasource/recommended_mentors_data_source.dart';
import 'package:mentorea_mobile_app/users/mentee/home/data/repository/recommended_mentors_repository.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_cubit.dart';

Future<void> recommendedMentorDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  /// DATA SOURCE
  getIt.registerLazySingleton<RecommendedMentorsDataSource>(
      () => RecommendedMentorsDataSource(dio));

  /// REPOSITORY
  getIt.registerLazySingleton<RecommendedMentorsRepository>(
      () => RecommendedMentorsRepository(getIt()));

  /// LOGIC
  getIt.registerFactory<RecommendedMentorsCubit>(
      () => RecommendedMentorsCubit(getIt()));
}
