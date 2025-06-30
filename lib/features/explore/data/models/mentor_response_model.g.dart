// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorResponseModel _$MentorResponseModelFromJson(Map<String, dynamic> json) =>
    MentorResponseModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      pathPhoto: json['pathPhoto'],
      pirthDate: json['pirthDate'] == null
          ? null
          : DateTime.parse(json['pirthDate'] as String),
      location: json['location'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      priceOfSession: (json['priceOfSession'] as num?)?.toInt(),
      numberOfSession: (json['numberOfSession'] as num?)?.toInt(),
      numberOfExperience: (json['numberOfExperience'] as num?)?.toInt(),
      numerOfComment: (json['numerOfComment'] as num?)?.toInt(),
      about: json['about'] as String?,
      fieldName: json['fieldName'] as String?,
    );
