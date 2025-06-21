import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/session_response_model.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/sessions_list_response_model.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/repository/session_repository.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/session/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  final SessionRepository _repository;
  SessionCubit(this._repository) : super(SessionInitialState()) {
    getAllSessionsByUser();
  }

  static SessionCubit get(context) => BlocProvider.of(context);

  List<SessionResponseModel> sessionList = [];
  Future<void> getAllSessionsByUser({String? status}) async {
    emit(GetAllSessionForUserLoadingState());
    final response =
        await _repository.getAllSessionsByUser(status ?? 'pending');

    if (response is Success<SessionsListResponseModel>) {
      sessionList = response.data.items!;
      emit(GetAllSessionForUserSuccessState());
    } else if (response is Failure) {
      emit(GetAllSessionForUserErrorState());
    }
  }

  Future<void> getSessionById({required String sessionId}) async {
    emit(GetSessionByIdLoadingState());
    final response = await _repository.getSessionById(sessionId);

    if (response is Success) {
      emit(GetSessionByIdSuccessState());
    } else if (response is Failure) {
      emit(GetSessionByIdErrorState());
    }
  }

  Future<void> markSessionAttendedByOneParty(
      {required String sessionId}) async {
    emit(MarkSessionAttendedByOnePartyLoadingState());
    final response = await _repository.markSessionAttendedByOneParty(sessionId);

    if (response is Success) {
      emit(MarkSessionAttendedByOnePartySuccessState());
    } else if (response is Failure) {
      emit(MarkSessionAttendedByOnePartyErrorState());
    }
  }

  Future<void> cancelSession({required String sessionId}) async {
    emit(CancelSessionLoadingState());
    final response = await _repository.cancelSession(sessionId);

    if (response is Success) {
      emit(CancelSessionSuccessState());
    } else if (response is Failure) {
      emit(CancelSessionErrorState());
    }
  }
}
