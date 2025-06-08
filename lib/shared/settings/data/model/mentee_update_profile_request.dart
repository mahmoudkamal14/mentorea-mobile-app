import 'package:json_annotation/json_annotation.dart';

part 'mentee_update_profile_request.g.dart';

@JsonSerializable()
class MenteeUpdateProfileRequest {
  MenteeUpdateProfileRequest({
    required this.name,
    required this.location,
    required this.about,
  });

  @JsonKey(name: 'Name')
  final String? name;
  final String? location;
  final String? about;

  Map<String, dynamic> toJson() => _$MenteeUpdateProfileRequestToJson(this);
}
