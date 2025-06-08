import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/connection/toggle_follow_request_body.dart';
import 'package:retrofit/retrofit.dart';

part 'community_connections_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CommunityConnectionsRemoteDataSource {
  factory CommunityConnectionsRemoteDataSource(Dio dio, {String baseUrl}) =
      _CommunityConnectionsRemoteDataSource;

  // Toggle follow mentor
  @POST(ApiConstants.toggleFollowMentor)
  Future<void> toggleFollowMentor(
    @Header('Authorization') String userToken,
    @Body() ToggleFollowRequestBody toggleFollowRequestBody,
  );
  // Count followers mentor
  @GET(ApiConstants.countFollowersMentor)
  Future<void> countFollowersMentor(
    @Header('Authorization') String userToken,
    @Path('userId') String userId,
  );
  // Count following mentor
  @GET(ApiConstants.countFollowingMentor)
  Future<void> countFollowingMentor(
    @Header('Authorization') String userToken,
    @Path('userId') String userId,
  );
  // Get followers mentor
  @GET(ApiConstants.getFollowersMentor)
  Future<void> getFollowersMentor(
    @Header('Authorization') String userToken,
  );
  // Get following mentor
  @GET(ApiConstants.getFollowingMentor)
  Future<void> getFollowingMentor(
    @Header('Authorization') String userToken,
  );
}
