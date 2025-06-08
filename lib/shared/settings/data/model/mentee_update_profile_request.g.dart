// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentee_update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenteeUpdateProfileRequest _$MenteeUpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    MenteeUpdateProfileRequest(
      name: json['Name'] as String?,
      location: json['location'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$MenteeUpdateProfileRequestToJson(
        MenteeUpdateProfileRequest instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'location': instance.location,
      'about': instance.about,
    };
