import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/datasource/schedule_data_source.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_request_body.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_response_model.dart';

class ScheduleRepository {
  final ScheduleDataSource _scheduleDataSource;

  ScheduleRepository(this._scheduleDataSource);

  Future<ApiResult<List<MentorAvailabilityResponseModel>>>
      getMentorAvailability(String mentorId) async {
    try {
      final response =
          await _scheduleDataSource.getMentorAvailability(mentorId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<MentorAvailabilityResponseModel>> addMentorAvailability(
      MentorAvailabilityRequestBody requestBody) async {
    try {
      final response =
          await _scheduleDataSource.addMentorAvailability(requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<void>> deleteMentorAvailability(
      String availabilityId) async {
    try {
      final response =
          await _scheduleDataSource.deleteMentorAvailability(availabilityId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<void>> updateMentorAvailability(
      String availabilityId, MentorAvailabilityRequestBody requestBody) async {
    try {
      final response = await _scheduleDataSource.updateMentorAvailability(
          availabilityId, requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
