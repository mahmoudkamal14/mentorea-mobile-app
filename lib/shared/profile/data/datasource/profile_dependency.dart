import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/shared/profile/data/datasource/profile_service.dart';
import 'package:mentorea_mobile_app/shared/profile/data/repository/profile_repository.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_cubit.dart';

Future<void> profileDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  getIt.registerLazySingleton<ProfileService>(() => ProfileService(dio));

  getIt.registerLazySingleton<ProfileRepository>(
      () => ProfileRepository(getIt()));

  /// LOGIC

  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
}
