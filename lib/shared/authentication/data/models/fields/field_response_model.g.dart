// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldResponseModel _$FieldResponseModelFromJson(Map<String, dynamic> json) =>
    FieldResponseModel(
      specializationName: json['specializationName'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      id: json['id'] as String,
      name: json['name'] as String,
    );
