import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/explore_mentor_data_source.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/repository/explore_mentor_repository.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';

Future<void> exploreMentorDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  /// DATA SOURCE
  getIt.registerLazySingleton<ExploreMentorDataSource>(
      () => ExploreMentorDataSource(dio));

  /// REPOSITORY
  getIt.registerLazySingleton<ExploreMentorRepository>(
      () => ExploreMentorRepository(getIt()));

  /// LOGIC
  getIt.registerFactory<ExploreMentorCubit>(() => ExploreMentorCubit(getIt()));
}
