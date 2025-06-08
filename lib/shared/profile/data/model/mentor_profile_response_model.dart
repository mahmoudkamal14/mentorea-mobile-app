import 'package:json_annotation/json_annotation.dart';

part 'mentor_profile_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorProfileResponseModel {
  MentorProfileResponseModel({
    required this.name,
    required this.id,
    required this.email,
    required this.pathPhoto,
    required this.pirthDate,
    required this.location,
    required this.about,
  });

  final String? name;
  final String? id;
  final String? email;
  final String? pathPhoto;
  final DateTime? pirthDate;
  final String? location;
  final String? about;

  factory MentorProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorProfileResponseModelFromJson(json);
}
