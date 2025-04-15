import 'package:json_annotation/json_annotation.dart';

part 'client_register_request_body.g.dart';

@JsonSerializable()
class ClientRegisterRequestBody {
  ClientRegisterRequestBody({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @JsonKey(name: 'FirstName')
  final String? firstName;

  @JsonKey(name: 'LastName')
  final String? lastName;

  @JsonKey(name: 'Email')
  final String? email;

  @JsonKey(name: 'Password')
  final String? password;

  Map<String, dynamic> toJson() => _$ClientRegisterRequestBodyToJson(this);
}
