import 'package:json_annotation/json_annotation.dart';

part 'create_session_request_body.g.dart';

@JsonSerializable(createToJson: false)
class CreateSessionRequestBody {
  CreateSessionRequestBody({
    required this.mentorId,
    required this.menteeId,
    required this.startDate,
    required this.startTime,
    required this.durationMinutes,
    required this.waitingTime,
    required this.notes,
  });

  final String mentorId;
  final String menteeId;
  final String startDate;
  final String startTime;
  final int durationMinutes;
  final int waitingTime;
  final String notes;

  factory CreateSessionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionRequestBodyFromJson(json);
}
