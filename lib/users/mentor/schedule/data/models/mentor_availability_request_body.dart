import 'package:json_annotation/json_annotation.dart';

part 'mentor_availability_request_body.g.dart';

@JsonSerializable()
class MentorAvailabilityRequestBody {
  MentorAvailabilityRequestBody({
    required this.startTime,
    required this.endTime,
  });

  @JsonKey(name: 'StartTime')
  final DateTime startTime;

  @JsonKey(name: 'EndTime')
  final DateTime endTime;

  factory MentorAvailabilityRequestBody.fromJson(Map<String, dynamic> json) =>
      _$MentorAvailabilityRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$MentorAvailabilityRequestBodyToJson(this);
}
