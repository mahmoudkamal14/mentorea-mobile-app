import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/login_response_model.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/login/refresh_token_request.dart';
import 'package:mentorea_mobile_app/features/authentication/data/datasource/auth_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  static final Dio _dio = Dio();

  factory ApiClient() {
    return _instance;
  }

  final List<String> noRefreshEndpoints = [
    ApiConstants.login,
    ApiConstants.menteeRegister,
    ApiConstants.mentorRegister,
    ApiConstants.confirmEmail,
    ApiConstants.resendOtpConfirmEmail,
    ApiConstants.forgotPassword,
    ApiConstants.resetPassword,
  ];

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 60);
    _dio
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut;

    addPrettyDioLogger();
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

          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          final requestPath = error.requestOptions.path;

          final isUnauthorized = error.response?.statusCode == 401;
          final isRefreshable = !noRefreshEndpoints.any(
            (endpoint) => requestPath.contains(endpoint),
          );

          if (isUnauthorized && isRefreshable) {
            final refreshToken = await CacheHelper.getSecuredData(
              key: CacheHelperKeys.refreshToken,
            );
            final accessToken = await CacheHelper.getSecuredData(
              key: CacheHelperKeys.accessToken,
            );

            if (refreshToken != null) {
              try {
                final newTokens =
                    await _refreshToken(refreshToken, accessToken!);

                await CacheHelper.saveSecuredData(
                  key: CacheHelperKeys.accessToken,
                  value: newTokens.token!,
                );
                await CacheHelper.saveSecuredData(
                  key: CacheHelperKeys.refreshToken,
                  value: newTokens.refreshToken!,
                );

                error.requestOptions.headers['Authorization'] =
                    'Bearer ${newTokens.token}';
                final response = await _dio.fetch(error.requestOptions);
                return handler.resolve(response);
              } catch (e) {
                await CacheHelper.clearAllSecuredData();
              }
            }
          }

          return handler.next(error);
        },
      ),
    );
  }

  Future<LoginResponseModel> _refreshToken(
      String refreshToken, String token) async {
    final response = await apiService.refreshToken(
      RefreshTokenRequest(refreshToken: refreshToken, token: token),
    );

    return response;
  }

  AuthServices get apiService => AuthServices(_dio);

  static void addPrettyDioLogger() {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
