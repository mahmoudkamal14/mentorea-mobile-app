import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/schedule/data/models/mentor_availability_request_body.dart';
import 'package:mentorea_mobile_app/features/schedule/data/models/mentor_availability_response_model.dart';
import 'package:mentorea_mobile_app/features/schedule/data/repository/schedule_repository.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_state.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  final ScheduleRepository _scheduleRepository;
  ScheduleCubit(this._scheduleRepository) : super(ScheduleInitial());

  static ScheduleCubit get(context) => BlocProvider.of(context);

  String? selectedDate;

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

  Future<void> addMentorAvailability() async {
    emit(CreateAvailabilityLoadingState());
    final response = await _scheduleRepository.addMentorAvailability(
      MentorAvailabilityRequestBody(
        date: selectedDate!,
        startTime: startTimeController.text,
        endTime: endTimeController.text,
      ),
    );

    if (response is Success) {
      emit(CreateAvailabilitySuccessState());
    } else if (response is Failure) {
      emit(CreateAvailabilityErrorState(response.toString()));
    }
  }

  Future<void> deleteMentorAvailability({
    required String availabilityId,
  }) async {
    emit(DeleteAvailabilityLoadingState());
    final response =
        await _scheduleRepository.deleteMentorAvailability(availabilityId);

    if (response is Success) {
      emit(DeleteAvailabilitySuccessState());
    } else if (response is Failure) {
      emit(DeleteAvailabilityErrorState(response.toString()));
    }
  }

  Future<void> updateMentorAvailability(
      {required String availabilityId,
      required String startTime,
      required String endTime}) async {
    emit(UpdateAvailabilityLoadingState());
    final response = await _scheduleRepository.updateMentorAvailability(
      availabilityId,
      MentorAvailabilityRequestBody(
        date: selectedDate!,
        startTime: startTime,
        endTime: endTime,
      ),
    );

    if (response is Success) {
      emit(UpdateAvailabilitySuccessState());
    } else if (response is Failure) {
      emit(UpdateAvailabilityErrorState(response.toString()));
    }
  }

  List<MentorAvailabilityResponseModel> mentorAvailabilityList = [];
  Future<void> getMentorAvailability({required String mentorId}) async {
    emit(GetAvailabilityLoadingState());
    final response = await _scheduleRepository.getMentorAvailability(mentorId);

    if (response is Success<List<MentorAvailabilityResponseModel>>) {
      mentorAvailabilityList = response.data;
      emit(GetAvailabilitySuccessState());
    } else if (response is Failure) {
      emit(GetAvailabilityErrorState(response.toString()));
    }
  }
}
