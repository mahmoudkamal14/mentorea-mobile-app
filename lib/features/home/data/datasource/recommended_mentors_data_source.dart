import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentors_list_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';

part 'recommended_mentors_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RecommendedMentorsDataSource {
  factory RecommendedMentorsDataSource(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _RecommendedMentorsDataSource;

  @GET(ApiConstants.topRatedMentors)
  Future<MentorsListResponseModel> getTopRatedMentors(
    @Query('PageNumber') int pageNumber,
    @Query('PageSize') int pageSize,
    @Query('SortDirection') String sortDirection,
    @Query('SortBy') String sortBy,
  );

  @GET(ApiConstants.recommendedMentors)
  Future<MentorsListResponseModel> getRecommendedMentors();
}
