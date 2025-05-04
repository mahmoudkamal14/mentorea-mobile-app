// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorResponseModel _$MentorResponseModelFromJson(Map<String, dynamic> json) =>
    MentorResponseModel(
      name: json['name'] as String?,
      id: json['id'] as String?,
      email: json['email'] as String?,
      pathPhoto: json['pathPhoto'],
      pirthDate: json['pirthDate'] == null
          ? null
          : DateTime.parse(json['pirthDate'] as String),
      location: json['location'] as String?,
      rate: json['rate'],
      priceOfSession: (json['priceOfSession'] as num?)?.toInt(),
      numberOfSession: json['numberOfSession'],
      about: json['about'] as String?,
      fieldName: json['fieldName'] as String?,
    );
