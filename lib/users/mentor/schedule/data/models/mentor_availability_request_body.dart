import 'package:json_annotation/json_annotation.dart';

part 'mentor_availability_request_body.g.dart';

@JsonSerializable()
class MentorAvailabilityRequestBody {
  final String date;
  final String startTime;
  final String endTime;

  MentorAvailabilityRequestBody({
    required this.date,
    required this.startTime,
    required this.endTime,
  });

  Map<String, dynamic> toJson() => _$MentorAvailabilityRequestBodyToJson(this);
}
