import 'package:json_annotation/json_annotation.dart';

part 'field_response_model.g.dart';

@JsonSerializable(createToJson: false)
class FieldResponseModel {
  FieldResponseModel({
    required this.specializationName,
    required this.fields,
  });

  final String specializationName;
  final List<Field> fields;

  factory FieldResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FieldResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class Field {
  Field({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}
