import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/bookings/data/datasource/mentee_session_data_source.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/create_session_request_body.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/give_feedback_request_body.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/session_response_model.dart';

class MenteeSessionRepository {
  final MenteeSessionDataSource _dataSource;

  MenteeSessionRepository(this._dataSource);

  Future<ApiResult<SessionResponseModel>> createSession(
      CreateSessionRequestBody createSessionRequestBody) async {
    try {
      final result = await _dataSource.createSession(createSessionRequestBody);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }

  Future<ApiResult<void>> giveSessionFeedback(
      GiveFeedbackRequestBody giveFeedbackRequestBody) async {
    try {
      final result =
          await _dataSource.giveSessionFeedback(giveFeedbackRequestBody);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }
}
