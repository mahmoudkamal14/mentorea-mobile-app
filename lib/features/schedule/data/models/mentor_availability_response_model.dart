import 'package:json_annotation/json_annotation.dart';

part 'mentor_availability_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorAvailabilityResponseModel {
  MentorAvailabilityResponseModel({
    required this.id,
    required this.mentorId,
    required this.date,
    required this.startTime,
    required this.endTime,
  });

  final String id;
  final String mentorId;
  final String date;
  final String startTime;
  final String endTime;

  factory MentorAvailabilityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorAvailabilityResponseModelFromJson(json);
}
