import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/features/authentication/data/models/fields/specialization_response_model.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentors_list_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'explore_mentor_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ExploreMentorDataSource {
  factory ExploreMentorDataSource(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ExploreMentorDataSource;

  // Get all specializations
  @GET(ApiConstants.getAllSpecializations)
  Future<List<SpecializationResponseModel>> getAllSpecializations();

  // Search for mentors by Name
  @GET(ApiConstants.searchMentor)
  Future<MentorsListResponseModel> searchMentor(
    @Query('PageNumber') int pageNumber,
    @Query('PageSize') int pageSize,
    @Query('SortDirection') String sortDirection,
    @Query('SortBy') String sortBy,
    @Query('SearchValue') String searchValue,
  );

  // Get mentors by specialization
  @GET(ApiConstants.getMentorsBySpecialization)
  Future<MentorsListResponseModel> getMentorsBySpecialization(
    @Query('PageNumber') int pageNumber,
    @Query('PageSize') int pageSize,
    @Query('SortDirection') String sortDirection,
    @Query('SortBy') String sortBy,
    @Query('SearchValue') String searchValue,
  );
}
