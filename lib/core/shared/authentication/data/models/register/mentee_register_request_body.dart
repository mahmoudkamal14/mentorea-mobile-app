import 'package:json_annotation/json_annotation.dart';

part 'mentee_register_request_body.g.dart';

@JsonSerializable()
class MenteeRegisterRequestBody {
  @JsonKey(name: 'Email')
  final String email;
  @JsonKey(name: 'Password')
  final String password;
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'Location')
  final String location;
  @JsonKey(name: 'Gender')
  final String gender;
  @JsonKey(name: 'PirthDate.Year')
  final int pirthDateYear;
  @JsonKey(name: 'PirthDate.Month')
  final int pirthDateMonth;
  @JsonKey(name: 'PirthDate.Day')
  final int pirthDateDay;
  @JsonKey(name: 'FieldInterests')
  final List<String> fieldInterests;
  @JsonKey(name: 'About')
  final String about;

  MenteeRegisterRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.location,
    required this.gender,
    required this.pirthDateYear,
    required this.pirthDateMonth,
    required this.pirthDateDay,
    required this.fieldInterests,
    required this.about,
  });

  Map<String, dynamic> toJson() => _$MenteeRegisterRequestBodyToJson(this);
}
