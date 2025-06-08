import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentors_list_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/home/data/repository/recommended_mentors_repository.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_state.dart';

class RecommendedMentorsCubit extends Cubit<RecommendedMentorsState> {
  final RecommendedMentorsRepository _mentorsRepository;
  RecommendedMentorsCubit(this._mentorsRepository)
      : super(RecommendedMentorsInitialState());

  static RecommendedMentorsCubit get(context) => BlocProvider.of(context);

  MentorsListResponseModel? topRatedMentors;
  MentorsListResponseModel? recommendedMentors;

  Future<void> getTopRatedMentors() async {
    emit(TopRatedMentorsLoadingState());

    final response = await _mentorsRepository.getTopRatedRatedMentors();

    if (response is Success<MentorsListResponseModel>) {
      topRatedMentors = response.data;
      emit(TopRatedMentorsSuccessState());
    } else if (response is Failure) {
      emit(TopRatedMentorsErrorState(error: response.toString()));
    }
  }

  Future<void> getRecommendedMentors() async {
    emit(RecommendedMentorsLoadingState());

    final response = await _mentorsRepository.getRecommendedMentors();

    if (response is Success<MentorsListResponseModel>) {
      recommendedMentors = response.data;
      emit(RecommendedMentorsSuccessState());
    } else if (response is Failure) {
      emit(RecommendedMentorsErrorState(error: response.toString()));
    }
  }
}
