// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorRegisterRequestBody _$MentorRegisterRequestBodyFromJson(
        Map<String, dynamic> json) =>
    MentorRegisterRequestBody(
      email: json['Email'] as String,
      password: json['Password'] as String,
      name: json['Name'] as String,
      location: json['Location'] as String,
      gender: json['Gender'] as String,
      pirthDateYear: (json['PirthDate.Year'] as num).toInt(),
      pirthDateMonth: (json['PirthDate.Month'] as num).toInt(),
      pirthDateDay: (json['PirthDate.Day'] as num).toInt(),
      numberOfExperience: (json['NumberOfExperience'] as num).toInt(),
      priceOfSession: (json['PriceOfSession'] as num).toInt(),
      about: json['About'] as String,
      fieldId: json['FieldId'] as String,
    );

Map<String, dynamic> _$MentorRegisterRequestBodyToJson(
        MentorRegisterRequestBody instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'Password': instance.password,
      'Name': instance.name,
      'Location': instance.location,
      'Gender': instance.gender,
      'PirthDate.Year': instance.pirthDateYear,
      'PirthDate.Month': instance.pirthDateMonth,
      'PirthDate.Day': instance.pirthDateDay,
      'NumberOfExperience': instance.numberOfExperience,
      'PriceOfSession': instance.priceOfSession,
      'About': instance.about,
      'FieldId': instance.fieldId,
    };
