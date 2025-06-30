import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/bookings/data/datasource/session_data_source.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/session_response_model.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/sessions_list_response_model.dart';

class SessionRepository {
  final SessionDataSource _dataSource;

  SessionRepository(this._dataSource);

  Future<ApiResult<SessionsListResponseModel>> getAllSessionsByUser(
      String status) async {
    try {
      final result = await _dataSource.getAllSessionsByUser("status", status);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<SessionResponseModel>> getSessionById(
      String sessionId) async {
    try {
      final result = await _dataSource.getSessionById(sessionId);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> markSessionAttendedByOneParty(
      String sessionId) async {
    try {
      final result = await _dataSource.markSessionAttendedByOneParty(sessionId);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<void>> cancelSession(String sessionId) async {
    try {
      final result = await _dataSource.cancelSession(sessionId);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
