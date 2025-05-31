import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/specialization_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/explore_mentor_data_source.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentors_list_response_model.dart';

class ExploreMentorRepository {
  final ExploreMentorDataSource _exploreMentorDataSource;

  ExploreMentorRepository(this._exploreMentorDataSource);

  Future<ApiResult<List<SpecializationResponseModel>>>
      getAllSpecializations() async {
    try {
      final result = await _exploreMentorDataSource.getAllSpecializations();

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  Future<ApiResult<MentorsListResponseModel>> searchMentor(
    int pageNumber,
    int pageSize,
    String sortDirection,
    String sortBy,
    String searchValue,
  ) async {
    try {
      final response = await _exploreMentorDataSource.searchMentor(
        pageNumber,
        pageSize,
        sortDirection,
        sortBy,
        searchValue,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<MentorsListResponseModel>> getMentorsBySpecialization(
    int pageNumber,
    int pageSize,
    String sortDirection,
    String sortBy,
    String searchValue,
  ) async {
    try {
      final response =
          await _exploreMentorDataSource.getMentorsBySpecialization(
        pageNumber,
        pageSize,
        sortDirection,
        sortBy,
        searchValue,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
