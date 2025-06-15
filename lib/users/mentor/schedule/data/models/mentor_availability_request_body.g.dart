// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_availability_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorAvailabilityRequestBody _$MentorAvailabilityRequestBodyFromJson(
        Map<String, dynamic> json) =>
    MentorAvailabilityRequestBody(
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$MentorAvailabilityRequestBodyToJson(
        MentorAvailabilityRequestBody instance) =>
    <String, dynamic>{
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
