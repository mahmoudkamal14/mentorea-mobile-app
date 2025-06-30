import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/session_response_model.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/sessions_list_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'session_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SessionDataSource {
  factory SessionDataSource(Dio dio,
      {String? baseUrl, ParseErrorLogger? errorLogger}) = _SessionDataSource;

  @GET(ApiConstants.getAllSessionsByUser)
  Future<SessionsListResponseModel> getAllSessionsByUser(
    @Query('SortBy') String sortBy,
    @Query('SearchValue') String status,
  );

  @GET(ApiConstants.getSessionById)
  Future<SessionResponseModel> getSessionById(
    @Path('sessionId') String sessionId,
  );

  @PUT(ApiConstants.markSessionAttendedByOneParty)
  Future<void> markSessionAttendedByOneParty(
    @Path('sessionId') String sessionId,
  );

  @PUT(ApiConstants.cancelSession)
  Future<void> cancelSession(
    @Path('sessionId') String sessionId,
  );
}
