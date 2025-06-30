import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentors_list_response_model.dart';
import 'package:mentorea_mobile_app/features/home/data/repository/recommended_mentors_repository.dart';
import 'package:mentorea_mobile_app/features/home/presentation/logic/recommended_mentors_state.dart';

class RecommendedMentorsCubit extends Cubit<RecommendedMentorsState> {
  final RecommendedMentorsRepository _mentorsRepository;
  RecommendedMentorsCubit(this._mentorsRepository)
      : super(RecommendedMentorsInitialState()) {
    getTopRatedMentors();
  }

  static RecommendedMentorsCubit get(context) => BlocProvider.of(context);

  List<MentorResponseModel> topRatedMentors = [];
  List<MentorResponseModel> recommendedMentors = [];

  Future<void> getTopRatedMentors() async {
    emit(TopRatedMentorsLoadingState());

    final response = await _mentorsRepository.getTopRatedRatedMentors();

    if (response is Success<MentorsListResponseModel>) {
      topRatedMentors = response.data.items!;
      emit(TopRatedMentorsSuccessState());
    } else if (response is Failure) {
      emit(TopRatedMentorsErrorState(error: response.toString()));
    }
  }

  Future<void> getRecommendedMentors() async {
    emit(RecommendedMentorsLoadingState());

    final response = await _mentorsRepository.getRecommendedMentors();

    if (response is Success<MentorsListResponseModel>) {
      recommendedMentors = response.data.items!;
      emit(RecommendedMentorsSuccessState());
    } else if (response is Failure) {
      emit(RecommendedMentorsErrorState(error: response.toString()));
    }
  }
}
