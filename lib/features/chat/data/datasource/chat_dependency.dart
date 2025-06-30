import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/features/chat/data/datasource/chat_data_source.dart';
import 'package:mentorea_mobile_app/features/chat/data/datasource/chat_web_socket_data_source.dart';
import 'package:mentorea_mobile_app/features/chat/data/repository/chat_repository.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_cubit.dart';

Future<void> chatDependency() async {
  Dio dio = ApiClient.getDio();

  getIt.registerLazySingleton<ChatDataSource>(() => ChatDataSource(dio));

  getIt.registerLazySingleton<ChatWebSocketDataSource>(
      () => ChatWebSocketDataSource());

  getIt.registerLazySingleton<ChatRepository>(
      () => ChatRepository(getIt(), getIt()));

  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt()));
}
