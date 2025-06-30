import 'package:json_annotation/json_annotation.dart';

part 'session_response_model.g.dart';

@JsonSerializable(createToJson: false)
class SessionResponseModel {
  SessionResponseModel(
    this.mentorName,
    this.menteeName, {
    required this.id,
    required this.mentorId,
    required this.menteeId,
    required this.startDate,
    required this.startTime,
    required this.durationMinutes,
    required this.status,
    required this.notes,
    required this.price,
  });

  final String? id;
  final String? mentorId;
  final String? menteeId;
  final String? mentorName;
  final String? menteeName;
  final String? startDate;
  final String? startTime;
  final int? durationMinutes;
  final String? status;
  final String? notes;
  final int? price;

  factory SessionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseModelFromJson(json);
}
