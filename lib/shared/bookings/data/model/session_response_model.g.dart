// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionResponseModel _$SessionResponseModelFromJson(
        Map<String, dynamic> json) =>
    SessionResponseModel(
      json['mentorName'] as String?,
      json['menteeName'] as String?,
      id: json['id'] as String?,
      mentorId: json['mentorId'] as String?,
      menteeId: json['menteeId'] as String?,
      startDate: json['startDate'] as String?,
      startTime: json['startTime'] as String?,
      durationMinutes: (json['durationMinutes'] as num?)?.toInt(),
      status: json['status'] as String?,
      notes: json['notes'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );
