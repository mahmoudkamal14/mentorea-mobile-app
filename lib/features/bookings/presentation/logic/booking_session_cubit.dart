import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/create_session_request_body.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/session_response_model.dart';
import 'package:mentorea_mobile_app/features/bookings/data/repository/mentee_session_repository.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/logic/booking_session_state.dart';

class BookingSessionCubit extends Cubit<BookingSessionState> {
  final MenteeSessionRepository _sessionRepository;
  BookingSessionCubit(this._sessionRepository) : super(BookingSessionInitial());

  static BookingSessionCubit get(context) => BlocProvider.of(context);

  TextEditingController notesController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController durationMinutesController = TextEditingController();
  TextEditingController waitingTimeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  Future<void> createSession({
    required String mentorId,
    required String menteeId,
  }) async {
    emit(CreateSessionLoadingState());

    final response = await _sessionRepository.createSession(
      CreateSessionRequestBody(
        mentorId: mentorId,
        menteeId: menteeId,
        startDate: startDateController.text,
        startTime: startTimeController.text,
        durationMinutes: int.tryParse(durationMinutesController.text) ?? 60,
        waitingTime: int.tryParse(waitingTimeController.text) ?? 5,
        notes: notesController.text,
      ),
    );

    if (response is Success<SessionResponseModel>) {
      emit(CreateSessionSuccessState());
    } else if (response is Failure) {
      emit(CreateSessionErrorState(error: response.toString()));
    }
  }
}
