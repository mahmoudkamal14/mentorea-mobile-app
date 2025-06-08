import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable(createToJson: false)
class SpecializationResponseModel {
  SpecializationResponseModel({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}
