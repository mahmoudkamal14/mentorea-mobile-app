import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentors_list_response_model.dart';
import 'package:mentorea_mobile_app/features/home/data/datasource/recommended_mentors_data_source.dart';

class RecommendedMentorsRepository {
  final RecommendedMentorsDataSource _dataSource;

  RecommendedMentorsRepository(this._dataSource);

  Future<ApiResult<MentorsListResponseModel>> getTopRatedRatedMentors() async {
    try {
      final result =
          await _dataSource.getTopRatedMentors(1, 10, 'DESC', 'rate');
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }

  Future<ApiResult<MentorsListResponseModel>> getRecommendedMentors() async {
    try {
      final result = await _dataSource.getRecommendedMentors();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handleError(error).message);
    }
  }
}
