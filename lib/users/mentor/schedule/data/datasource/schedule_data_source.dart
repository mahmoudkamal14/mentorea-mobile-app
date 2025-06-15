import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_request_body.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'schedule_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ScheduleDataSource {
  factory ScheduleDataSource(Dio dio, {String? baseUrl}) = _ScheduleDataSource;

  @GET(ApiConstants.getMentorAvailabilityList)
  Future<List<MentorAvailabilityResponseModel>> getMentorAvailability(
    @Path("mentorId") String mentorId,
  );

  @POST(ApiConstants.createMentorAvailability)
  Future<MentorAvailabilityResponseModel> addMentorAvailability(
    @Body() MentorAvailabilityRequestBody mentorAvailabilityRequestBody,
  );

  @DELETE(ApiConstants.deleteMentorAvailability)
  Future<void> deleteMentorAvailability(
    @Path("availabilityId") String availabilityId,
  );

  @PUT(ApiConstants.updateMentorAvailability)
  Future<void> updateMentorAvailability(
    @Path("availabilityId") String availabilityId,
    @Body() MentorAvailabilityRequestBody mentorAvailabilityRequestBody,
  );
}
