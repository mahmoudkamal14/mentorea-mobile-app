import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/login/refresh_token_request.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/services/auth_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  static final Dio _dio = Dio();

  factory ApiClient() {
    return _instance;
  }

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 60);
    _dio
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut;

    addDioInterceptor();
    ApiClient._internal();
    return _dio;
  }

  ApiClient._internal() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await CacheHelper.getSecuredData(
            key: CacheHelperKeys.accessToken,
          );
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            // Access Token expired
            final refreshToken = await CacheHelper.getSecuredData(
              key: CacheHelperKeys.refreshToken,
            );
            final accessToken = await CacheHelper.getSecuredData(
              key: CacheHelperKeys.accessToken,
            );
            if (refreshToken != null) {
              try {
                final newTokens =
                    await _refreshToken(refreshToken, accessToken);

                CacheHelper.saveSecuredData(
                  key: CacheHelperKeys.accessToken,
                  value: newTokens.token,
                );
                CacheHelper.saveSecuredData(
                  key: CacheHelperKeys.refreshToken,
                  value: newTokens.refreshToken,
                );

                // Retry the original request with the new access token
                error.requestOptions.headers['Authorization'] =
                    'Bearer ${newTokens.token}';
                final response = await _dio.fetch(error.requestOptions);
                return handler.resolve(response);
              } catch (e) {
                // Refresh Token failed, log out the user
                await CacheHelper.clearAllSecuredData();
                // Navigate to login screen
              }
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<LoginResponseModel> _refreshToken(
      String refreshToken, String accessToken) async {
    final response = await apiService.refreshToken(
      RefreshTokenRequest(refreshToken: refreshToken, token: accessToken),
    );
    return response;
  }

  AuthServices get apiService => AuthServices(_dio);

  static void addDioInterceptor() {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
