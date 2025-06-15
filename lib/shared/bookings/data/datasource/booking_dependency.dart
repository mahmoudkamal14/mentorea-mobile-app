import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/datasource/mentee_session_data_source.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/datasource/session_data_source.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/repository/mentee_session_repository.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/repository/session_repository.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/booking_session_cubit.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/session/session_cubit.dart';

Future<void> bookingDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  // Datasource
  getIt.registerLazySingleton<MenteeSessionDataSource>(
      () => MenteeSessionDataSource(dio));
  getIt.registerLazySingleton<SessionDataSource>(() => SessionDataSource(dio));

  // Repository
  getIt.registerLazySingleton<MenteeSessionRepository>(
      () => MenteeSessionRepository(getIt()));
  getIt.registerLazySingleton<SessionRepository>(
      () => SessionRepository(getIt()));

  // LOGIC
  getIt
      .registerFactory<BookingSessionCubit>(() => BookingSessionCubit(getIt()));
  getIt.registerFactory<SessionCubit>(() => SessionCubit(getIt()));
}
