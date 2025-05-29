import 'package:json_annotation/json_annotation.dart';

part 'mentor_availability_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorAvailabilityResponseModel {
  MentorAvailabilityResponseModel({
    required this.id,
    required this.mentorId,
    required this.startTime,
    required this.endTime,
  });

  final String id;
  final String mentorId;
  final DateTime startTime;
  final DateTime endTime;

  factory MentorAvailabilityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorAvailabilityResponseModelFromJson(json);
}
