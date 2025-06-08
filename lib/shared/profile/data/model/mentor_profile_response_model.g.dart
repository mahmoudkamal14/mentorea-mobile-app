// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorProfileResponseModel _$MentorProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    MentorProfileResponseModel(
      name: json['name'] as String?,
      id: json['id'] as String?,
      email: json['email'] as String?,
      pathPhoto: json['pathPhoto'] as String?,
      pirthDate: json['pirthDate'] == null
          ? null
          : DateTime.parse(json['pirthDate'] as String),
      location: json['location'] as String?,
      about: json['about'] as String?,
    );
