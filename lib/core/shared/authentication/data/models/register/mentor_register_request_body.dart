import 'package:json_annotation/json_annotation.dart';

part 'mentor_register_request_body.g.dart';

@JsonSerializable()
class MentorRegisterRequestBody {
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
  @JsonKey(name: 'NumberOfExperience')
  final int numberOfExperience;
  @JsonKey(name: 'PriceOfSession')
  final int priceOfSession;
  @JsonKey(name: 'About')
  final String about;
  @JsonKey(name: 'FieldId')
  final String fieldId;

  MentorRegisterRequestBody(
      {required this.email,
      required this.password,
      required this.name,
      required this.location,
      required this.gender,
      required this.pirthDateYear,
      required this.pirthDateMonth,
      required this.pirthDateDay,
      required this.numberOfExperience,
      required this.priceOfSession,
      required this.about,
      required this.fieldId});

  Map<String, dynamic> toJson() => _$MentorRegisterRequestBodyToJson(this);
}
