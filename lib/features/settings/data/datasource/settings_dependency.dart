import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/features/settings/data/datasource/settings_remote_data_source.dart';
import 'package:mentorea_mobile_app/features/settings/data/repository/settings_repository.dart';
import 'package:mentorea_mobile_app/features/settings/presentation/logic/settings_cubit.dart';

Future<void> settingsDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  getIt.registerLazySingleton<SettingsRemoteDataSource>(
      () => SettingsRemoteDataSource(dio));

  getIt.registerLazySingleton<SettingsRepository>(
      () => SettingsRepository(getIt()));

  /// LOGIC

  getIt.registerFactory<SettingsCubit>(() => SettingsCubit(getIt()));
}
