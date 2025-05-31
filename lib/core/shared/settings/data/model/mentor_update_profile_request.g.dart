// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorUpdateProfileRequest _$MentorUpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    MentorUpdateProfileRequest(
      name: json['Name'] as String?,
      location: json['location'] as String?,
      about: json['about'] as String?,
      priceOfSession: (json['priceOfSession'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MentorUpdateProfileRequestToJson(
        MentorUpdateProfileRequest instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'location': instance.location,
      'priceOfSession': instance.priceOfSession,
      'about': instance.about,
    };
