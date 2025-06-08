import 'package:json_annotation/json_annotation.dart';

part 'mentor_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorResponseModel {
  MentorResponseModel({
    required this.id,
    required this.name,
    required this.email,
    required this.pathPhoto,
    required this.pirthDate,
    required this.location,
    required this.rate,
    required this.priceOfSession,
    required this.numberOfSession,
    required this.numberOfExperience,
    required this.numerOfComment,
    required this.about,
    required this.fieldName,
  });

  final String? id;
  final String? name;
  final String? email;
  final dynamic pathPhoto;
  final DateTime? pirthDate;
  final String? location;
  final double? rate;
  final int? priceOfSession;
  final int? numberOfSession;
  final int? numberOfExperience;
  final int? numerOfComment;
  final String? about;
  final String? fieldName;

  factory MentorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorResponseModelFromJson(json);
}
