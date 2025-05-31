import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/datasource/schedule_data_source.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/repository/schedule_repository.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_cubit.dart';

Future<void> scheduleDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  getIt
      .registerLazySingleton<ScheduleDataSource>(() => ScheduleDataSource(dio));

  getIt.registerLazySingleton<ScheduleRepository>(
      () => ScheduleRepository(getIt()));

  /// LOGIC

  getIt.registerFactory<ScheduleCubit>(() => ScheduleCubit(getIt()));
}
