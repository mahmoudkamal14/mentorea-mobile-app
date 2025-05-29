// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_availability_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorAvailabilityRequestBody _$MentorAvailabilityRequestBodyFromJson(
        Map<String, dynamic> json) =>
    MentorAvailabilityRequestBody(
      startTime: DateTime.parse(json['StartTime'] as String),
      endTime: DateTime.parse(json['EndTime'] as String),
    );

Map<String, dynamic> _$MentorAvailabilityRequestBodyToJson(
        MentorAvailabilityRequestBody instance) =>
    <String, dynamic>{
      'StartTime': instance.startTime.toIso8601String(),
      'EndTime': instance.endTime.toIso8601String(),
    };
