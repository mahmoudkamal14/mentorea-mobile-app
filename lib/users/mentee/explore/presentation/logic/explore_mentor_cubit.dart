import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/specialization_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentors_list_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/repository/explore_mentor_repository.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_state.dart';

class ExploreMentorCubit extends Cubit<ExploreMentorState> {
  final ExploreMentorRepository _mentorRepository;
  ExploreMentorCubit(this._mentorRepository)
      : super(const ExploreMentorState.initial());

  static ExploreMentorCubit get(context) => BlocProvider.of(context);

  // Get all specializations
  List<SpecializationResponseModel> specializationList = [];
  Future<void> getAllSpecializations() async {
    emit(const ExploreMentorState.getAllSpecializationsLoading());
    final response = await _mentorRepository.getAllSpecializations();

    if (response is Success<List<SpecializationResponseModel>>) {
      specializationList = response.data;
      emit(const ExploreMentorState.getAllSpecializationsSuccess());
    } else if (response is Failure) {
      emit(
          ExploreMentorState.getAllSpecializationsFailure(response.toString()));
    }
  }

  // Search for mentors by Name
  MentorsListResponseModel? mentorsListResponseModel;

  List<MentorResponseModel> mentorsListResponseModelBySpecialization = [];
  Future<void> searchMentor({
    int? pageNumber,
    int? pageSize,
    String? sortDirection,
    String? sortBy,
    String? searchValue,
  }) async {
    emit(const ExploreMentorState.searchingForMentorLoading());
    final response = await _mentorRepository.searchMentor(
      pageNumber ?? 1,
      pageSize ?? 10,
      sortDirection ?? 'DESC',
      sortBy ?? 'rate',
      searchValue ?? '',
    );

    if (response is Success<MentorsListResponseModel>) {
      mentorsListResponseModelBySpecialization = response.data.items!;
      emit(const ExploreMentorState.searchingForMentorSuccess());
    } else if (response is Failure) {
      emit(ExploreMentorState.searchingForMentorFailure(response.toString()));
    }
  }

  // Get mentors by specialization
  Future<void> getMentorsBySpecialization({
    int? pageNumber,
    int? pageSize,
    String? sortDirection,
    String? sortBy,
    required String searchValue,
  }) async {
    emit(const ExploreMentorState.getMentorsBySpecializationLoading());
    final response = await _mentorRepository.getMentorsBySpecialization(
      pageNumber ?? 1,
      pageSize ?? 10,
      sortDirection ?? 'DESC',
      sortBy ?? 'rate',
      searchValue,
    );

    if (response is Success<MentorsListResponseModel>) {
      mentorsListResponseModelBySpecialization = response.data.items!;
      emit(const ExploreMentorState.getMentorsBySpecializationSuccess());
    } else if (response is Failure) {
      emit(ExploreMentorState.getMentorsBySpecializationFailure(
          response.toString()));
    }
  }
}
