import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/create_session_request_body.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/give_feedback_request_body.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/session_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'mentee_session_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MenteeSessionDataSource {
  factory MenteeSessionDataSource(Dio dio, {String? baseUrl}) =
      _MenteeSessionDataSource;

  @POST(ApiConstants.createSession)
  Future<SessionResponseModel> createSession(
    @Body() CreateSessionRequestBody createSessionRequestBody,
  );

  @PUT(ApiConstants.giveSessionFeedback)
  Future<void> giveSessionFeedback(
    @Body() GiveFeedbackRequestBody giveFeedbackRequestBody,
  );
}
