// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_availability_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorAvailabilityResponseModel _$MentorAvailabilityResponseModelFromJson(
        Map<String, dynamic> json) =>
    MentorAvailabilityResponseModel(
      id: json['id'] as String,
      mentorId: json['mentorId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );
