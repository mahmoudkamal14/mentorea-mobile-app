import 'package:json_annotation/json_annotation.dart';

part 'mentee_profile_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MenteeProfileResponseModel {
  MenteeProfileResponseModel({
    required this.name,
    required this.email,
    required this.pathPhoto,
    required this.pirthDate,
    required this.location,
    required this.about,
  });

  final String name;
  final String email;
  final String pathPhoto;
  final DateTime pirthDate;
  final String location;
  final String about;

  factory MenteeProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MenteeProfileResponseModelFromJson(json);
}
