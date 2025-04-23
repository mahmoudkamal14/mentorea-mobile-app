import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/repository/auth_repository.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/services/auth_service.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/confirm%20email/confirm_email_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/mentee/mentee_register_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/mentor/mentor_register_cubit.dart';

Future<void> authDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  getIt.registerLazySingleton<AuthServices>(() => AuthServices(dio));

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt()));

  /// LOGIC

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt
      .registerFactory<MenteeRegisterCubit>(() => MenteeRegisterCubit(getIt()));

  getIt.registerFactory<ConfirmEmailCubit>(() => ConfirmEmailCubit(getIt()));
  getIt
      .registerFactory<MentorRegisterCubit>(() => MentorRegisterCubit(getIt()));
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(getIt()),
  );
}
