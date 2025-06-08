// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSessionRequestBody _$CreateSessionRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CreateSessionRequestBody(
      mentorId: json['mentorId'] as String,
      menteeId: json['menteeId'] as String,
      startDate: json['startDate'] as String,
      startTime: json['startTime'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      waitingTime: (json['waitingTime'] as num).toInt(),
      notes: json['notes'] as String,
    );
