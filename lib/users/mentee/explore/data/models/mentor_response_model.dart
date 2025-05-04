import 'package:json_annotation/json_annotation.dart';

part 'mentor_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorResponseModel {
  MentorResponseModel({
    required this.name,
    required this.id,
    required this.email,
    required this.pathPhoto,
    required this.pirthDate,
    required this.location,
    required this.rate,
    required this.priceOfSession,
    required this.numberOfSession,
    required this.about,
    required this.fieldName,
  });

  final String? name;
  final String? id;
  final String? email;
  final dynamic pathPhoto;
  final DateTime? pirthDate;
  final String? location;
  final dynamic rate;
  final int? priceOfSession;
  final dynamic numberOfSession;
  final String? about;
  final String? fieldName;

  factory MentorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorResponseModelFromJson(json);
}
