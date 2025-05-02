import 'package:json_annotation/json_annotation.dart';

part 'mentor_update_profile_request.g.dart';

@JsonSerializable()
class MentorUpdateProfileRequest {
  MentorUpdateProfileRequest({
    required this.name,
    required this.location,
    required this.about,
    required this.priceOfSession,
  });

  @JsonKey(name: 'Name')
  final String? name;
  final String? location;
  final int? priceOfSession;
  final String? about;

  Map<String, dynamic> toJson() => _$MentorUpdateProfileRequestToJson(this);
}
