import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/networking/api_client.dart';
import 'package:mentorea_mobile_app/features/community/data/datasource/community_connections_remote_data_source.dart';
import 'package:mentorea_mobile_app/features/community/data/datasource/community_post_remote_data_source.dart';
import 'package:mentorea_mobile_app/features/community/data/datasource/community_reacts_remote_data_scource.dart';
import 'package:mentorea_mobile_app/features/community/data/repository/community_connections_repository.dart';
import 'package:mentorea_mobile_app/features/community/data/repository/community_post_repository.dart';
import 'package:mentorea_mobile_app/features/community/data/repository/community_reacts_repository.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/connection/community_connections_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/react/community_react_cubit.dart';

Future<void> communityDependency() async {
  // Dio & Api Service
  Dio dio = ApiClient.getDio();

  // Datasource
  getIt.registerLazySingleton<CommunityPostRemoteDataSource>(
      () => CommunityPostRemoteDataSource(dio));
  getIt.registerLazySingleton<CommunityReactsRemoteDataScource>(
      () => CommunityReactsRemoteDataScource(dio));
  getIt.registerLazySingleton<CommunityConnectionsRemoteDataSource>(
      () => CommunityConnectionsRemoteDataSource(dio));

  // Repository
  getIt.registerLazySingleton<CommunityPostRepository>(
      () => CommunityPostRepository(getIt()));
  getIt.registerLazySingleton<CommunityReactsRepository>(
      () => CommunityReactsRepository(getIt()));
  getIt.registerLazySingleton<CommunityConnectionsRepository>(
      () => CommunityConnectionsRepository(getIt()));

  // LOGIC
  getIt.registerFactory<CommunityPostCubit>(() => CommunityPostCubit(getIt()));
  getIt
      .registerFactory<CommunityReactCubit>(() => CommunityReactCubit(getIt()));
  getIt.registerFactory<CommunityConnectionsCubit>(
      () => CommunityConnectionsCubit(getIt()));
}
